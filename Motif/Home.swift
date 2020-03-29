//
//  Home.swift
//  Motif
//
//  Created by 潘维恒 on 2020/3/29.
//  Copyright © 2020 PAN Weiheng. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            List {
                Text("Home")
            }
            .navigationBarTitle("Home", displayMode: .inline)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
