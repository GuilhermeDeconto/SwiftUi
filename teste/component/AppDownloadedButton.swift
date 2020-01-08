//
//  AppDownloadedButton.swift
//  teste
//
//  Created by Guilherme Deconto on 08/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct AppDownloadedButton: View {
    
    @Binding var isappDownloaded: Bool
    @Binding var showingAlert: Bool
    
    var body: some View {
        Button(action: {
            self.showingAlert = true
        } ) {
            Text(isappDownloaded ? "OPEN" : "GET").bold().foregroundColor(.white).frame(width: 60, height: 30, alignment: .center).background(Color.blue).cornerRadius(10)
        }
        .alert(isPresented: $showingAlert) {
            if (isappDownloaded){
                return Alert(title: Text("Open"), message: Text("Starting application"), dismissButton: .default(Text("Got it!")))
            }else{
                return Alert(title: Text("Important message"), message: Text("You just bought a new App for your Iphone"), dismissButton: .default(Text("Got it!"), action: {
                   self.isappDownloaded = true
                }))
            }
            
        }
    }
}
