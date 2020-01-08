//
//  SliderView.swift
//  teste
//
//  Created by Guilherme Deconto on 08/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var segmentedControl: Int
    @Binding var selectedInt: Double
    
    var body: some View {
        HStack {
            if (segmentedControl == 1){
                Slider(value: $selectedInt, in: 0...50, step: 1)
                Text("50")
            }else if (segmentedControl == 0){
                Slider(value: $selectedInt, in: 0...20, step: 1)
                Text("20")
            }else{
                Slider(value: $selectedInt, in: 0...100, step: 1)
                Text("100")
            }
        }
    }
}
