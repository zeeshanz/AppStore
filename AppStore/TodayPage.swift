//
//  TodayPage.swift
//  AppStore
//
//  Created by Zeeshan A Zakaria on 2021-01-24.
//

import Foundation
import SwiftUI

struct TodayView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Sunday, Jan 24").foregroundColor(.gray).bold().font(.footnote)
                        Text("Today").font(.largeTitle).bold()
                    }
                    Spacer()
                    Button(action: self.loadProfile, label: {
                        Image("Profile").resizable().frame(width: 40, height: 40, alignment: .trailing)
                    })
                }
            }.padding([.leading, .trailing, .top])
            HighlightView(image: "Cheetah", category: "Cheetah's", title: "Curosity", message: "Can you show me what are you looking at?").frame(height: 500, alignment: .leading)
            HighlightView(image: "Animals", category: "Animals", title: "Curosity", message: "That seems fun").frame(height: 500, alignment: .leading)
            HighlightView(image: "Baby-Cheetah", category: "Baby-Cheetah", title: "Relaxing With Frien", message: "Waiting for my turn").frame(height: 500, alignment: .leading)
        }
    }
    func loadProfile() {
        
    }
}

struct HighlightView: View {
    var image: String
    var category: String
    var title: String
    var message: String
    var body: some View {
        VStack {
            ZStack {
                Image(image).resizable()
                LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                
                VStack(alignment: .leading) {
                    Text(category).foregroundColor(.white).bold()
                    Text(title).foregroundColor(.white).font(.title).bold()
                    Spacer()
                    Text(message).foregroundColor(.white)
                }.padding()
            }
        }.cornerRadius(30).padding().shadow(radius: 5)
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
