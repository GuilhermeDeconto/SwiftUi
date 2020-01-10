//
//  OptionSettingsView.swift
//  teste
//
//  Created by Guilherme Deconto on 10/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct OptionSettingsView : View {
    let option: Option
    
    var body: some View {
        return NavigationLink(destination: OptionInnerDetail(option: option)) {
            HStack {
                Image(systemName: option.image)
                    .resizable()
                    .cornerRadius(8)
                    .frame(width: 25, height: 25)
                    .clipped()
                    .aspectRatio(contentMode: .fit)
                Text(option.title)
                    .foregroundColor(.blue)
                    .font(.system(size: 18))
            }
        }
    }
}
