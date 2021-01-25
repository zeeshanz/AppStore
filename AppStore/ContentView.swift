//
//  ContentView.swift
//  AppStore
//
//  Created by Zeeshan A Zakaria on 2021-01-24.
//

import SwiftUI

struct ContentView: View {
    
    let appearance = UINavigationBarAppearance()
    
//    init() {
//        appearance.shadowColor = .clear
//        appearance.backgroundColor = .white
//        UINavigationBar.appearance().standardAppearance = appearance
//    }
    
    @State private var midY: CGFloat = 0.0
    @State private var headerText = "Contacts"
    var body: some View {
        NavigationView {
            List {
                HStack {
                    HeaderView(headerText: self.headerText, midY: $midY)
                        .frame(height: 40, alignment: .leading)
                    
                    HStack {
                        Button(action: {
                            self.action1()
                        }) {
                            Image("Profile").resizable()
                                .frame(width: 40, height: 40, alignment: .trailing)
                                .font(.largeTitle)
                        }
                    }
                }
                
                Text("Test Text")
                
            }
            .navigationBarTitle(self.midY < 70 ? Text(self.headerText) : Text(""), displayMode: .inline)
        }
    }
    
    func action1() {
        print("do action 1...")
    }
    
}

struct HeaderView: View {
    let headerText: String
    @Binding var midY: CGFloat
    var body: some View {
        GeometryReader { geometry -> Text in
            let frame = geometry.frame(in: CoordinateSpace.global)
            
            withAnimation(.easeIn(duration: 0.25)) {
                DispatchQueue.main.async {
                    self.midY = frame.midY
                }
            }
            
            return Text(self.headerText)
                .bold()
                .font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
