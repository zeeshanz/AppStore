//
//  BottomButtons.swift
//  AppStore
//
//  Created by Zeeshan A Zakaria on 2021-01-24.
//

import Foundation
import SwiftUI

struct BottomButtonsView: View {
    var body: some View {
        VStack() {
            Button(action: {
                print("Button action")
            }) {
                HStack {
                    Text("Redeem")
                }.padding(10)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.15))
                .cornerRadius(10)
            }
            Button(action: {
                print("Button action")
            }) {
                HStack {
                    Text("Send Gift")
                }.padding(10)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.15))
                .cornerRadius(10)
            }
            Button(action: {
                print("Button action")
            }) {
                HStack {
                    Text("Add Funds to Apple ID")
                }.padding(10)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.15))
                .cornerRadius(10)
            }
            
        }.padding()
    }
}

struct BottomButtons_Previews: PreviewProvider {
    static var previews: some View {
        BottomButtonsView()
    }
}
