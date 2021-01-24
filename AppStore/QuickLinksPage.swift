//
//  QuickLinksPage.swift
//  AppStore
//
//  Created by Zeeshan A Zakaria on 2021-01-24.
//

import Foundation
import SwiftUI

struct QuickLinksView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading) {
                    VStack() {
                        Text("Quick Links").font(.title2).bold()
                    }.padding([.bottom])
                    Button("About In-App Purchases") {}.font(.title2)
                    Divider()
                    Button("Parents Guide to the App Store") {}.font(.title2)
                    Divider()
                    Button("Apps in French") {}.font(.title2)
                    Divider()
                }
            }
        }.padding()
    }
}

struct QuickLinksView_Previews: PreviewProvider {
    static var previews: some View {
        QuickLinksView()
    }
}
