//
//  FirstTab.swift
//  teste
//
//  Created by Guilherme Deconto on 08/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct FirstTab: View {
    
    @State var showingAlert = false
    @State var isappDownloaded = false
    @State var showingShare = false
    @State var rating: Int
    @State private var images: [String] = ["imagem1", "imagem2","imagem1", "imagem2","imagem1", "imagem2"]
    
    @State private var aplication: Apps = Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig")
    
    var body: some View {
        VStack {
            ScrollView(.vertical) {
                AppStoreList(image: aplication.image, title: aplication.name, description: aplication.description, inAppPurchase: aplication.inAppPurchase)
                HStack {
                    RatingView(rating: $rating)
                    Spacer()
                    VStack{
                        Text("N°4")
                            .bold()
                            .foregroundColor(.gray)
                            .font(.system(size: 20))
                        
                        Text("Casual")
                            .foregroundColor(.gray)
                            .font(.system(size: 11))
                    }
                    Spacer()
                    VStack{
                        HStack{
                            Text("14").bold().background(Color.red).frame(width: 20, height: 20, alignment: .center).foregroundColor(.white).font(.system(size: 10))
                            Text("12+").bold().foregroundColor(.gray).font(.system(size: 20))
                        }
                        Text("Age").foregroundColor(.gray).font(.system(size: 15))
                    }
                    
                }.padding(.leading, 20).padding(.trailing, 20)
                
                DescriptionImage(images: $images)
            }
        }
    }
}
