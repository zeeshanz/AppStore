//
//  TabBarPage.swift
//  AppStore
//
//  Created by Zeeshan A Zakaria on 2021-01-24.
//

import Foundation
import SwiftUI

struct TabBarView: View {
    @ State var selectected: Int = 0
    var body: some View {
        TabView(selection: $selectected) {
            TodayView().tabItem {
                Text("Today")
            }
            GamesView().tabItem {
                Text("Games")
            }
            AppsView().tabItem {
                Text("Apps")
            }
            ArcadeView().tabItem {
                Text("Arcade")
            }
            SearchView().tabItem {
                Text("Search")
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
