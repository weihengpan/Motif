//
//  CSVContainer.swift
//  Motif
//
//  Created by Pan Weiheng on 2020/3/30.
//

import Foundation

class CSVContainer {
    
    enum CSVTextError: Error {
        case invalidColumnNumber(received: Int, expecting: Int)
    }
    
    private(set) var delimiter: String
    private(set) var titles: [String]
    private(set) var text: String = ""
    
    var columnCount: Int { titles.count }
    
    init(titles: [String], delimiter: String = ",") {
        self.delimiter = delimiter
        self.titles = titles
        try! addRow(titles)
    }
    
    func addRow(_ row: [String]) throws {
        guard row.count == columnCount else {
            throw CSVTextError.invalidColumnNumber(received: row.count, expecting: columnCount)
        }
        text += row.joined(separator: delimiter) + "\n"
    }
    
    func addRow(_ row: [CustomStringConvertible]) throws {
        let rowString = row.map { String(describing: $0) }
        try addRow(rowString)
    }
    
    func clear() {
        text = ""
    }
    
}
