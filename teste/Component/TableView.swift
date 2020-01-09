//
//  TableView.swift
//  teste
//
//  Created by Guilherme Deconto on 09/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct TableView: View {
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
                .frame(width: 60, height: 60, alignment: .center)
                .cornerRadius(20)
            VStack {
                Text(title).bold().font(.system(size: 15)).frame(width: UIScreen.main.bounds.width*0.5, height: nil, alignment: .leading)
                Text(description).foregroundColor(.gray).frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
            }.frame(width: nil, height: 50, alignment: .leading)
            Spacer()
            VStack {
                AppDownloadedButton(isappDownloaded: $isappDownloaded, showingAlert: $showingAlert, alterColor: true)
                Text("In App Purchases").foregroundColor(.gray).font(.system(size: 10)).frame(width: nil, height: nil, alignment: .leading)
            }
            
        }.padding(.leading, 5).padding(.trailing, 5).padding(.top, 20).padding(.bottom, 20)
    }
}
