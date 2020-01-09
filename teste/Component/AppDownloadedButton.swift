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
    var alterColor: Bool
    
    var body: some View {
        Button(action: {
            self.showingAlert = true
        } ) {
            Text(isappDownloaded ? "OPEN" : "GET").bold().foregroundColor(alterColor ? .blue : .white).frame(width: 60, height: 30, alignment: .center).background(alterColor ? Color(UIColor.gray.normal) : Color.blue).cornerRadius(10)
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

extension UIColor {
    struct purple {
        static let normal = UIColor(red:0.043, green:0.576 ,blue:0.588 , alpha:1.00)
        static let light = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        static let dark = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    }
    struct gray {
        static let normal = UIColor(red:0.5, green:0.5 ,blue:0.5 , alpha:0.35)
        static let dark = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    }
}

