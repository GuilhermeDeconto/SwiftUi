//
//  FourthTab.swift
//  teste
//
//  Created by Guilherme Deconto on 09/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct FourthTab: View {
    
    @State var popularApps: [Apps] = [
        Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig", moreData:[
            Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
            Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
            Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
        ]),
        Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
        Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
    ]
    
    var body: some View {
        List {
            Section(header: SectionHeader(text: "Popular Apps")){
                ForEach(popularApps, id: \.self) { app in
                    TableView(image: app.image, title: app.name, description: app.description, inAppPurchase: app.inAppPurchase, moreData: app.moreData)
                }
            }
            
            Section(header: SectionHeader(text: "Apps we love")){
                ForEach(popularApps, id: \.self) { app in
                    TableView(image: app.image, title: app.name, description: app.description, inAppPurchase: app.inAppPurchase, moreData: app.moreData)
                }
            }
        }
    }
}
