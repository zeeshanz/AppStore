//
//  ArcadePage.swift
//  AppStore
//
//  Created by Zeeshan A Zakaria on 2021-01-24.
//

import Foundation
import SwiftUI

struct ArcadeView: View {
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack()  {
                    Text("Hello, Arcade Page!")
                }
            }.navigationBarTitle(Text("Arcade Page"))
        }
    }
}

struct ArcadeView_Previews: PreviewProvider {
    static var previews: some View {
        ArcadeView()
    }
}
