//
//  AppStoreList.swift
//  teste
//
//  Created by Guilherme Deconto on 09/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct AppStoreList: View {
    
    @State var showingAlert = false
    @State var isappDownloaded = false
    @State var showingShare = false
    
    var image: String
    var title: String
    var description: String
    var inAppPurchase: Bool
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 150, height: 150, alignment: .center)
                .cornerRadius(30)
            Spacer()
            VStack {
                Text(title).bold().font(.title).frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                Text(description).foregroundColor(.gray).frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                Spacer()
                HStack {
                    AppDownloadedButton(isappDownloaded: $isappDownloaded, showingAlert: $showingAlert, alterColor: false)
                    if (!isappDownloaded){
                        Text("In App Purchases").foregroundColor(.gray).font(.system(size: 10)).frame(width: 55, height: nil, alignment: .leading)
                    }
                    Spacer()
                    Button(action: {self.showingShare = true }){
                        Image(systemName: "square.and.arrow.up").foregroundColor(.blue).font(.system(size: 22))
                    }.alert(isPresented: $showingShare) {
                        Alert(title: Text("Important message"), message: Text("You just shared this application with your friends"), dismissButton: .default(Text("Got it!")))
                    }
                }
            }.frame(width: nil, height: 150, alignment: .center)
        } .padding(20)
    }
}
