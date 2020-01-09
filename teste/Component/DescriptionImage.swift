//
//  DescriptionImage.swift
//  teste
//
//  Created by Guilherme Dall'Agnol Deconto on 09/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct DescriptionImage: View {
    
    @Binding var images: [String]
    
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                ForEach(images, id: \.self) { image in
                    Image(image).resizable().frame(width: 270, height: 500, alignment: .center)
                }
            }
        }
    }
}

