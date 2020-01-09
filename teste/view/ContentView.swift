//
//  ContentView.swift
//  teste
//
//  Created by Guilherme Deconto on 07/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            FirstTab(rating: 4)
                .tabItem {
                    Image(systemName: "tv.fill")
                    Text("First Tab")
            }
            SecondTab()
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Second Tab")
            }
        }
    }
}

