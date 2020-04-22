//
//  FileManager+.swift
//  Motif
//
//  Created by Pan Weiheng on 2020/4/3.
//

import Foundation

extension FileManager {
    
    static let temporaryDirectoryName = "temp"
    
    func documentDirectoryURL(appending path: String) -> URL {
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let url = urls[0]
        return url.appendingPathComponent(path)
    }
    
    func temporaryDirectoryURL(appending path: String) -> URL {
        return documentDirectoryURL(appending: Self.temporaryDirectoryName).appendingPathComponent(path)
    }
    
    func createTemporaryDirectory() {
        let url = documentDirectoryURL(appending: Self.temporaryDirectoryName)
        do {
            try createDirectory(at: url, withIntermediateDirectories: true, attributes: nil)
        } catch {
            #if DEBUG
            print("Failed to create temporary directory.")
            #endif
        }
    }
    
}
