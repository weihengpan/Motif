//
//  SampleRow.swift
//  Motif
//
//  Created by Pan Weiheng on 2020/4/2.
//

import SwiftUI

struct SampleRow: View {
    
    var sample: MotionDataSample
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy.MM.dd HH:mm:ss"
        return formatter
    }()
    let dateComponentsFormatter: DateComponentsFormatter = {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.day, .hour, .minute, .second]
        formatter.unitsStyle = .abbreviated
        return formatter
    }()
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Image(systemName: "waveform.circle")
                    .font(Font.title.weight(.light))
                VStack(alignment: .leading) {
                    Text(self.dateFormatter.string(from: self.sample.firstTimestamp!))
                        .font(.subheadline).bold()
                    Text([
                        "\(self.dateComponentsFormatter.string(from: self.sample.duration ?? 0)!)",
                        "\(Int(self.sample.samplingRate)) Hz",
                        "\(self.sample.entries.count) entries"]
                        .joined(separator: ", "))
                        .font(.caption)
                        .lineLimit(1)
                }.layoutPriority(1)
                Spacer()
            }
        }
    }
}

struct SampleRow_Previews: PreviewProvider {
    static var previews: some View {
        List {
            ForEach(MotionDataSample.previewSamples) { sample in
                SampleRow(sample: sample)
            }
        }
    }
}
