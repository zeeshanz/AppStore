//
//  TabBarPage.swift
//  AppStore
//
//  Created by Zeeshan A Zakaria on 2021-01-24.
//

import Foundation
import SwiftUI

struct TabBarView: View {
    @ State var selectected: Int = 2
    var body: some View {
        TabView(selection: $selectected) {
            TodayView().tabItem {
                Text("Today")
            }.tag(0)
            GamesView().tabItem {
                Text("Games")
            }.tag(1)
            AppsView().tabItem {
                Text("Apps")
            }.tag(2)
            ArcadeView().tabItem {
                Text("Arcade")
            }.tag(3)
            SearchView().tabItem {
                Text("Search")
            }.tag(4)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
