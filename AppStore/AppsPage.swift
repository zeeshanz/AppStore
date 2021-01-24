//
//  AppsPage.swift
//  AppStore
//
//  Created by Zeeshan A Zakaria on 2021-01-24.
//

import Foundation
import SwiftUI

struct AppsView: View {
    var iPhoneStarterKit = AppsStarterKit()
    var topFreeApps = TopFreeApps()
    var numOfRow = 3
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Apps").font(.largeTitle).bold()
                    }
                    Spacer()
                    Button(action: self.loadProfile, label: {
                        Image("Profile").resizable().frame(width: 40, height: 40, alignment: .trailing)
                    })
                }
            }.padding()
            Divider()
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    FeaturedPostView(captionText: "GET STARTED", titleText: "The Sims Freeplay", subTitleText: "Bonjour From Paris", image: "sim-city")
                    FeaturedPostView(captionText: "New Update", titleText: "The Sims Freeplay", subTitleText: "Bonjour From Paris", image: "sim-city")
                    FeaturedPostView(captionText: "New Update", titleText: "The Sims Freeplay", subTitleText: "Bonjour From Paris", image: "sim-city")
                    FeaturedPostView(captionText: "New Update", titleText: "The Sims Freeplay", subTitleText: "Bonjour From Paris", image: "sim-city")
                }
            })
            
            Divider()
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("iPhone Starter Kit").font(.title2).bold()
                    }
                    Spacer()
                    Button(action: self.loadProfile, label: {
                        Text("See All")
                    })
                }
            }.padding([.leading, .trailing, .top])
            HorizontalScrollView(items: self.iPhoneStarterKit.listOfApps)
            
            Divider()
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Top Free Apps").font(.title2).bold()
                    }
                    Spacer()
                    Button(action: self.loadProfile, label: {
                        Text("See All")
                    })
                }
            }.padding([.leading, .trailing, .top])

            HorizontalScrollView(items: self.topFreeApps.listOfApps)
         }
    }
    
    func loadProfile() {
        
    }

}

struct AppsStarterKit {
    var listOfApps = [
        AppData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-logo-1"),
        AppData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-logo-1"),
        AppData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-logo-1"),
        AppData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-logo-1"),
        AppData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-logo-1"),
        AppData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-logo-1"),
        AppData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-logo-1"),
        AppData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-logo-1"),
        AppData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-logo-1"),
        AppData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-logo-1"),
        AppData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-logo-1"),
        AppData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-logo-1"),
        AppData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-logo-1"),
        AppData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-logo-1"),
        AppData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-logo-1"),
        AppData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-logo-1"),
        AppData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-logo-1"),
        AppData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-logo-1"),
        AppData(id: UUID(), title: "CBSAApp", subTitle: "Sample App 1", image: "sample-logo-1")
    ]
}

struct TopFreeApps {
    var listOfApps = [
        AppData(id: UUID(), title: "Zoom App", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Zoom App", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Zoom App", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Zoom App", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Zoom App", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Zoom App", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Zoom App", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Zoom App", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Zoom App", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Zoom App", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Zoom App", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Zoom App", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Zoom App", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Zoom App", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Zoom App", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Zoom App", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Zoom App", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Zoom App", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Zoom App", subTitle: "Sample App 2", image: "sample-logo-2")
    ]
}

struct AppData: Identifiable {
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
