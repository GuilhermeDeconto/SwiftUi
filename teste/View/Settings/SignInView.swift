//
//  SignInView.swift
//  teste
//
//  Created by Guilherme Deconto on 10/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct SignInView : View {
    var body: some View {
        HStack(alignment: .center) {
            Image("default")
                .resizable()
                .cornerRadius(20)
                .frame(width: 60, height: 60)
                .clipped()
                .aspectRatio(contentMode: .fit)
            
            VStack(alignment: .leading) {
                Text("Sign in to your iPhone")
                    .foregroundColor(.blue)
                    .font(.system(size: 18))
                    .lineLimit(nil)
                Text("Set up iCloud, the App Store, and more.")
                    .foregroundColor(.gray)
                    .font(.system(size: 15))
                    .lineLimit(nil)
            }
        }
    }
}
