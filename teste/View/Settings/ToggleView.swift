//
//  ToggleView.swift
//  teste
//
//  Created by Guilherme Deconto on 10/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct ToggleView: View {
    let value: InnerOptionValues
    @ObservedObject var toggle = Settings()
    
    var body: some View {
        HStack {
            Image(systemName: value.image)
                .resizable()
                .cornerRadius(12)
                .frame(width: 25, height: 25)
                .clipped()
                .aspectRatio(contentMode: .fit)
            
            Toggle(isOn: $toggle.isToggleOn) {
                Text(value.title)
                    .foregroundColor(.blue)
                    .font(.system(size: 18))
            }
        }
    }
}
