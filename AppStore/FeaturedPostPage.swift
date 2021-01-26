//
//  FeaturedPostView.swift
//  AppStore
//
//  Created by Zeeshan A Zakaria on 2021-01-24.
//

import Foundation
import SwiftUI

struct FeaturedPostView : View {
    var captionText: String
    var titleText: String
    var subTitleText: String
    var image: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(captionText).font(.caption).foregroundColor(.blue)
            Text(titleText).font(.title3).bold()
            Text(subTitleText).font(.subheadline).foregroundColor(.gray)
            Image(image).resizable().frame(width: (UIApplication.shared.windows.first?.frame.width ?? 0) - 50, height: 230, alignment: .center).cornerRadius(5.0)
        }
//        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading).padding(10)
    }
}

struct FeaturedPost_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedPostView(captionText: "New Update", titleText: "The Sims Freeplay", subTitleText: "Bonjour from Paris", image: "sample-app-1")
    }
}
