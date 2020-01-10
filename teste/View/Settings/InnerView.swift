//
//  InnerView.swift
//  teste
//
//  Created by Guilherme Deconto on 10/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct InnerView: View {
    let value: InnerOptionValues
    
    var body: some View {
        return NavigationLink(destination: EndView(value: value)) {
            HStack {
                Image(systemName: value.image)
                    .resizable()
                    .cornerRadius(8)
                    .frame(width: 25, height: 25)
                    .clipped()
                    .aspectRatio(contentMode: .fit)
                Text(value.title)
                    .foregroundColor(.blue)
                    .font(.system(size: 18))
            }
        }
    }
}
