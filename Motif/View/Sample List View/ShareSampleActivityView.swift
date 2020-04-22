//
//  ShareSampleActivityView.swift
//  Motif
//
//  Created by Pan Weiheng on 2020/4/3.
//

import SwiftUI

struct ShareSampleActivityView: UIViewControllerRepresentable {
    
    enum FileFormat {
        case csv
        case json
    }
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd_HH-mm-ss"
        return formatter
    }()
    
    let activityItems: [Any]
    let applicationActivities: [UIActivity]?
    let fileURLs: [URL]
    
    init(fileFormat: FileFormat, samples: [MotionDataSample]) {
        
        FileManager.default.createTemporaryDirectory()
        var urls = [URL]()
        
        // Save data to temp files and fill in urls
        for sample in samples {
            let dateString = dateFormatter.string(from: sample.startTime)
            var ext: String
            var text: String
            
            switch fileFormat {
            case .csv:
                
                ext = "csv"
                text = sample.encodeToCSV()
                
            case .json:
                
                ext = "json"
                let encoder = JSONEncoder()
                encoder.outputFormatting = .prettyPrinted
                do {
                    let jsonData = try encoder.encode(sample)
                    text = String(data: jsonData, encoding: .utf8)!
                } catch {
                    fatalError("Failed to encode motion data sample to JSON.")
                }
                
            }
            
            let fileName = dateString + "." + ext
            let url = FileManager.default.temporaryDirectoryURL(appending: fileName)
            do {
                try text.write(to: url, atomically: true, encoding: .utf8)
            } catch {
                fatalError("Failed to write temp file \(fileName) to disk.")
            }
            urls.append(url)
        }
        
        activityItems = urls.map { NSURL(string: $0.absoluteString)! } as [Any]
        applicationActivities = nil
        fileURLs = urls
    }
    
    private func completionHandler(activityType: UIActivity.ActivityType?, completed: Bool, returnedItems: [Any]?, activityError: Error?) {
        
        guard completed == true else { return }
        
        // Delete temp files
        for url in fileURLs {
            do {
                try FileManager.default.removeItem(at: url)
            } catch {
                fatalError("Failed to delete temp file \(url.absoluteString) on disk.")
            }
        }
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ShareSampleActivityView>) -> UIActivityViewController {
        
        let controller = UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
        controller.completionWithItemsHandler = completionHandler
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: UIViewControllerRepresentableContext<ShareSampleActivityView>) {}
    
}
