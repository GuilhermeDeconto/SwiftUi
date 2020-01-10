//
//  EndView.swift
//  teste
//
//  Created by Guilherme Deconto on 10/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct EndView: View {
    let value: InnerOptionValues
    
    var body: some View {
        return NavigationLink(destination: EndView(value: value)) {
            
            Text("Coming Soon!!!")
                .font(.system(size: 25))
                .foregroundColor(.blue)
        } .navigationBarTitle(Text(value.title), displayMode: .inline)
    }
}
