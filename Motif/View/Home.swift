//
//  Home.swift
//  Motif
//
//  Created by Pan Weiheng on 2020/3/29.
//

import SwiftUI

struct Home: View {
    
    @EnvironmentObject var recorder: Recorder
    
    var body: some View {
        TabView {
            
            RecorderView().tabItem {
                Image(systemName: "waveform")
                Text("Record")
            }
            
            SampleListView().tabItem {
                Image(systemName: "list.bullet")
                Text("Samples")
            }
            
        }.accentColor(recorder.isRecording ? .red : .blue)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home().environmentObject(Recorder())
    }
}
