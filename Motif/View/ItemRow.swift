//
//  ItemRow.swift
//  Motif
//
//  Created by Pan Weiheng on 2020/4/1.
//

import SwiftUI

struct ItemRow: View {
    var nameView: AnyView
    var valueView: AnyView
    
    init<S: StringProtocol>(name: S, value: S) {
        nameView = AnyView(Text(name))
        valueView = AnyView(Text(value))
    }
    
    init<U: View, V: View>(nameView: U, valueView: V) {
        self.nameView = AnyView(nameView)
        self.valueView = AnyView(valueView)
    }
    
    var body: some View {
        HStack {
            nameView
            Spacer()
            valueView.foregroundColor(.secondary)
        }
    }
}

struct EntryRow_Previews: PreviewProvider {
    static var previews: some View {
        List {
            ItemRow(name: "Speed", value: "5 cm/s")
        }
    }
}
