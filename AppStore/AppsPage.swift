//
//  AppsPage.swift
//  AppStore
//
//  Created by Zeeshan A Zakaria on 2021-01-24.
//

import Foundation
import SwiftUI

struct AppsView: View {
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.shadowColor = .clear
        appearance.backgroundEffect = .init(style: .light)
        UINavigationBar.appearance().standardAppearance = appearance
    }
    
    var numberOfItems: Int {
        return 3
    }
    var itemSpacing: CGFloat {
        return 100
    }
    var overlap: CGFloat {
        return 20
    }
    var itemWidth: CGFloat {
        return UIApplication.shared.screenWidth - 2 * (itemSpacing + overlap)
    }
    
    var colors: [Color] = [Color.red, Color.orange, Color.yellow, Color.green, Color.init(.systemTeal), Color.blue, Color.purple]
    
    @Environment(\.openURL) var openURL
    @State private var midY: CGFloat = 0.0
    @State private var headerText = "Apps1"
    var iPhoneStarterKit = AppsStarterKit()
    var topFreeApps = TopFreeApps()
    var numOfRow = 3
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                HStack {
                    HeaderView(headerText: self.headerText, midY: $midY)
                        .frame(height: 40, alignment: .leading)
                        .padding(.top, 15)
                    
                    HStack {
                        Button(action: {
                            print("Profile button pressed")
                        }) {
                            Image(systemName: "person.crop.circle").resizable()
                                .frame(width: 40, height: 40, alignment: .trailing)
                                .padding(.top, 15)
                        }
                    }
                }.padding([.leading, .trailing])
                
                Divider()
                
                ZStack {
                    HStack(spacing: 0) {
                        HStack(spacing: itemSpacing) {
                            ForEach(0 ..< numberOfItems) { itemNumber in
                                VStack(alignment: .leading) {
                                    Text("\(itemNumber)")
                                    colors[itemNumber % colors.count].frame(width: itemWidth, height: 100, alignment: .center)
                                }
                            }
                        }
                        .padding(EdgeInsets(top: 0, leading: itemSpacing + overlap, bottom: 0, trailing: itemSpacing + overlap))
                        .background(Color.init(white: 1.0, opacity: 0.3))
                    }.frame(width: UIApplication.shared.screenWidth)
                    .modifier(ScrollingHStackModifier(items: numberOfItems, itemWidth: itemWidth, itemSpacing: itemSpacing))
                    .background(Color.black)
                }.background(Color.orange)
                
                Divider()
                Group {
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
                }
                
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
                Group {
                    Divider()
                    QuickLinksView()
                    BottomButtonsView()
                    Divider()
                    Button(action: {
                        openURL(URL(string: "https://www.apple.com")!)
                    }) {
                        HStack(spacing: 5) {
                            Text("Terms & Conditions")
                            Image(systemName: "chevron.right").font(.caption)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.gray)
                        .cornerRadius(10)
                    }.padding()
                }
                
            }
            .navigationBarTitle(self.midY < 70 ? Text(self.headerText) : Text(""), displayMode: .inline)
        }
    }
    
    func loadProfile() {
        
    }
}

struct AppsStarterKit {
    var listOfApps = [
        AppData(id: UUID(), title: "PicsArt Photo & Video Editor", subTitle: "Sample App 1", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Splice Video Editor", subTitle: "Sample App 2", image: "sample-logo-1"),
        AppData(id: UUID(), title: "SnapChat", subTitle: "Sample App 3", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Magisto Video Editor", subTitle: "Sample App 4", image: "sample-logo-1"),
        AppData(id: UUID(), title: "SWEAT: Fitness App for Women", subTitle: "Sample App 5", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Calm: Sleep, Meditate, Relax", subTitle: "Sample App 6", image: "sample-logo-1"),
        AppData(id: UUID(), title: "PicsArt Photo & Video Editor", subTitle: "Sample App 7", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Splice Video Editor", subTitle: "Sample App 8", image: "sample-logo-1"),
        AppData(id: UUID(), title: "SnapChat", subTitle: "Sample App 3", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Magisto Video Editor", subTitle: "Sample App 9", image: "sample-logo-1"),
        AppData(id: UUID(), title: "SWEAT: Fitness App for Women", subTitle: "Sample App 10", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Calm: Sleep, Meditate, Relax", subTitle: "Sample App 11", image: "sample-logo-1"),
        AppData(id: UUID(), title: "PicsArt Photo & Video Editor", subTitle: "Sample App 12", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Splice Video Editor", subTitle: "Sample App 13", image: "sample-logo-1"),
        AppData(id: UUID(), title: "SnapChat", subTitle: "Sample App 14", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Magisto Video Editor", subTitle: "Sample App 15", image: "sample-logo-1"),
        AppData(id: UUID(), title: "SWEAT: Fitness App for Women", subTitle: "Sample App 16", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Calm: Sleep, Meditate, Relax", subTitle: "Sample App 17", image: "sample-logo-1"),
        AppData(id: UUID(), title: "PicsArt Photo & Video Editor", subTitle: "Sample App 18", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Splice Video Editor", subTitle: "Sample App 19", image: "sample-logo-1"),
        AppData(id: UUID(), title: "SnapChat", subTitle: "Sample App 20", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Magisto Video Editor", subTitle: "Sample App 21", image: "sample-logo-1"),
        AppData(id: UUID(), title: "SWEAT: Fitness App for Women", subTitle: "Sample App 22", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Calm: Sleep, Meditate, Relax", subTitle: "Sample App 23", image: "sample-logo-1")
    ]
}

struct TopFreeApps {
    var listOfApps = [
        AppData(id: UUID(), title: "Procreate Pocket", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "TouchRetouch", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "iMotoneige", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Da Vinci Eye", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "iQuad", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Forest Stay Focused", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Procreate Pocket", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "TouchRetouch", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "iMotoneige", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Da Vinci Eye", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "iQuad", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Forest Stay Focused", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Procreate Pocket", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "TouchRetouch", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "iMotoneige", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Da Vinci Eye", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "iQuad", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Forest Stay Focused", subTitle: "Sample App 2", image: "sample-logo-2")
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
