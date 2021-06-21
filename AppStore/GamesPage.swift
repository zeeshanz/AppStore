//
//  GamesPage.swift
//  AppStore
//
//  Created by Zeeshan A Zakaria on 2021-01-24.
//

import Foundation
import SwiftUI

struct GamesView: View {

    @ObservedObject var declaration = Declaration()

    var body: some View {
        VStack {
            VStack {
                ForEach(declaration.array, id: \.id) { item in
                    Text(String(item.destination))
                    Text(String(item.entryBy))
                    Text(String(item.note))
                }
            }.padding()

            Button("SUBMIT") {
                let index = Int.random(in: 0 ..< self.declaration.array.count)
                let a = Declaration()
                self.declaration.array.append(a.array[0])
                self.declaration.array[index].visible.toggle()
            }.padding()
        }
    }
}

class Declaration: ObservableObject {
    @Published var array: [DeclarationInfo]
    
    init() {
        self.array = (0..<1).map {
            DeclarationInfo(id: $0, destination: "Ottawa", entryBy: "Plane", note: "No notes")
        }
    }
}

struct DeclarationInfo {
    let id: Int
    var destination: String
    var entryBy: String
    var note: String
    var visible = true
}

struct GamesView_Previews: PreviewProvider {
    static var previews: some View {
        GamesView()
    }
}
