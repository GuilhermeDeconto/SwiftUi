//
//  ThirdTab.swift
//  teste
//
//  Created by Guilherme Deconto on 09/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct ThirdTab: View {
    
    @State var aplication: [Apps] = [
        Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
        Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
        Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
        Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
        Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
        Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
        Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
        Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
        Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
        Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
        Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
        Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
        Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
        Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
        Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
    ]
    
    var body: some View {
        ScrollView {
            VStack{
                ForEach(aplication, id: \.self) { app in
                    TableView(image: app.image, title: app.name, description: app.description, inAppPurchase: app.inAppPurchase)
                }
            }
        }
        
    }
}
