//
//  SectionHeader.swift
//  teste
//
//  Created by Guilherme Deconto on 09/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct SectionHeader: View {
    
    var text: String
    
    var body: some View {
        HStack{
            Text(text).bold().frame(width: 300, height: 30, alignment: .leading).padding(.leading, 40)
            Spacer()
            Button(action: {
            } ) {
                Text("See All").bold().foregroundColor(.blue).frame(width: 60, height: 30, alignment: .center).cornerRadius(10)
            }.padding(.trailing, 40)
        }.background(Color.white)
    }
}
