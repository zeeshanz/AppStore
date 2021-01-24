//
//  AppsPage.swift
//  AppStore
//
//  Created by Zeeshan A Zakaria on 2021-01-24.
//

import Foundation
import SwiftUI

struct AppsView: View {
    var gameStorage = GameStorage()
    var numOfRow = 3
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Today").font(.largeTitle).bold()
                    }
                    Spacer()
                    Button(action: self.loadProfile, label: {
                        Image("Profile").resizable().frame(width: 40, height: 40, alignment: .trailing)
                    })
                }
            }.padding()
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    FeaturedPostView(captionText: "New Update", titleText: "The Sims Freeplay", subTitleText: "Bonjour From Paris", image: "sim-city")
                    FeaturedPostView(captionText: "New Update", titleText: "The Sims Freeplay", subTitleText: "Bonjour From Paris", image: "sim-city")
                    FeaturedPostView(captionText: "New Update", titleText: "The Sims Freeplay", subTitleText: "Bonjour From Paris", image: "sim-city")
                    FeaturedPostView(captionText: "New Update", titleText: "The Sims Freeplay", subTitleText: "Bonjour From Paris", image: "sim-city")
                }
            })
            Divider()
            HorizontalScrollView(items: self.gameStorage.thisWeeksGames)
         }
    }
    
    func loadProfile() {
        
    }

}

struct GameStorage {
    var thisWeeksGames = [
        GameData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-game-logo"),
        GameData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-game-logo"),
        GameData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-game-logo"),
        GameData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-game-logo"),
        GameData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-game-logo"),
        GameData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-game-logo"),
        GameData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-game-logo"),
        GameData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-game-logo"),
        GameData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-game-logo"),
        GameData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-game-logo"),
        GameData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-game-logo"),
        GameData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-game-logo"),
        GameData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-game-logo"),
        GameData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-game-logo"),
        GameData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-game-logo"),
        GameData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-game-logo"),
        GameData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-game-logo"),
        GameData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-game-logo"),
        GameData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-game-logo")
    ]
}

struct GameData: Identifiable {
    var id = UUID()
    var title = String()
    var subTitle = String()
    var image = String()
}

struct AppsView_Previews: PreviewProvider {
    static var previews: some View {
        AppsView()
    }
}
