//
//  SearchPage.swift
//  AppStore
//
//  Created by Zeeshan A Zakaria on 2021-01-24.
//

import Foundation
import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack() {
                    Text("Sample text 1")
                }.padding()
            }
            .navigationBarTitle("Search Page")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
