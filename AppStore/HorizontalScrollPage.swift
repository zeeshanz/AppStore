//
//  HorizontalScrollView.swift
//  AppStore
//
//  Created by Zeeshan A Zakaria on 2021-01-24.
//

import Foundation
import SwiftUI

struct HorizontalScrollView: View {
    var items: [AppData]
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                ForEach(0 ..< 3) {
                    row in
                    HStack {
                        ForEach(0 ..< items.count / 3) {
                            column in
                            AppCell(data: self.items[self.determineCurrentCell(row: row, column: column)])
                        }
                    }
                }
            }
        }
    }
    
    func determineCurrentCell(row: Int, column: Int) -> Int {
        return ((((column + 1) * 3) - row) - 1)
    }
}

struct AppCell: View {
    var data: AppData
    var body: some View {
        HStack {
            Image(data.image).resizable().frame(width: 50, height: 50, alignment: .leading).cornerRadius(10)
            VStack(alignment: .leading) {
                Text(data.title)
                Text(data.subTitle).font(.subheadline).foregroundColor(.gray)
            }
        }.padding([.leading, .trailing]).frame(width: (UIApplication.shared.windows.first?.frame.width ?? 300) - 50, alignment: .leading)
    }
}

struct HorizontalScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollView(items: AppsStarterKit().listOfApps)
    }
}
