//
//  SampleListView.swift
//  Motif
//
//  Created by Pan Weiheng on 2020/3/29.
//

import SwiftUI

struct SampleListView: View {
    
    @EnvironmentObject var recorder: Recorder
    
    @State var editMode: EditMode = .inactive
    @State var isShowingShareActionSheet = false
    @State var isShowingShareActivitySheet = false
    @State var shareActivitySheetFileFormat: ShareSampleActivityView.FileFormat = .csv
    @State var selectedID = Set<UUID>()
    
    private var selectedSamples: [MotionDataSample] {
        var samples = [MotionDataSample]()
        for id in selectedID {
            if let index = recorder.samples.firstIndex(where: { $0.id == id }) {
                samples.append(recorder.samples[index])
            }
        }
        return samples
    }
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            List(selection: $selectedID) {
                ForEach(recorder.samples) { sample in
                    NavigationLink(destination: SampleDetailView(sample: sample)) {
                        
                        SampleRow(sample: sample)
                            .padding(.vertical)
                            .contextMenu {
                                
                                Button(action: {
                                    self.selectedID = [sample.id]
                                    self.isShowingShareActivitySheet.toggle()
                                    self.shareActivitySheetFileFormat = .csv
                                }) {
                                    Text("Share as CSV")
                                }
                                
                                Button(action: {
                                    self.selectedID = [sample.id]
                                    self.isShowingShareActivitySheet.toggle()
                                    self.shareActivitySheetFileFormat = .json
                                }) {
                                    Text("Share as JSON")
                                }
                        }
                        
                    }
                }
                .onDelete(perform: delete)
                .onMove(perform: move)
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Samples")
            .navigationBarItems(
                leading: leadingItems.opacity(editMode == .active ? 1.0 : 0.0),
                trailing: EditButton()
            )
            .sheet(isPresented: $isShowingShareActivitySheet, content: {
                ShareSampleActivityView(fileFormat: self.shareActivitySheetFileFormat, samples: self.selectedSamples)
            })
            .environment(\.editMode, self.$editMode)
        }
    }
    
    // MARK: - Custom Views
    
    private var leadingItems: AnyView {
        AnyView(HStack {
            shareButton.padding(.trailing, 22)
            deleteButton
        })
    }
    
    private var deleteButton: AnyView {
        if editMode == .inactive {
            return AnyView(Text(""))
        } else {
            return AnyView(Button(action: deleteRows) {
                Image(systemName: "trash")
                    //.font(.system(size: 22))
                    .accentColor(.red)
            })
        }
    }
    
    private var shareButton: AnyView {
        if editMode == .inactive {
            return AnyView(Text(""))
        } else {
            return AnyView(Button(action: { self.isShowingShareActionSheet.toggle() }) {
                Image(systemName: "square.and.arrow.up")
                    //.font(.system(size: 22))
                }.actionSheet(isPresented: $isShowingShareActionSheet, content: { self.shareActionSheet })
            )
        }
    }
    
    private var shareActionSheet: ActionSheet {
        ActionSheet(title: Text("Share sample as..."), message: nil, buttons: [
            .default(Text("CSV")) {
                self.isShowingShareActivitySheet.toggle()
                self.shareActivitySheetFileFormat = .csv
            },
            .default(Text("JSON")) {
                self.isShowingShareActivitySheet.toggle()
                self.shareActivitySheetFileFormat = .json
            },
            .cancel()
        ])
    }
    
    // MARK: - Methods
    
    private func delete(at offsets: IndexSet) {
        recorder.samples.remove(atOffsets: offsets)
    }
    
    private func deleteRows() {
        for id in selectedID {
            if let index = recorder.samples.firstIndex(where: { $0.id == id }) {
                recorder.samples.remove(at: index)
            }
        }
        selectedID = Set<UUID>()
    }
    
    private func move(from source: IndexSet, to destination: Int) {
        recorder.samples.move(fromOffsets: source, toOffset: destination)
    }
}

struct SamplesList_Previews: PreviewProvider {
    static var previews: some View {
        let recorder = Recorder()
        recorder.samples = MotionDataSample.previewSamples
        return SampleListView().environmentObject(recorder)
    }
}
