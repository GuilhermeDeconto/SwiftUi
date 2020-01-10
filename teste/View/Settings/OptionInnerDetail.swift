//
//  OptionInnerDetail.swift
//  teste
//
//  Created by Guilherme Deconto on 10/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct OptionInnerDetail: View {
    let option: Option
    var body: some View {
        Form {
            ForEach(option.values,id: \.title) { valuesOption in
                OptionInnerView(value: valuesOption)
            }
        }
        .navigationBarTitle(Text(option.title), displayMode: .inline)
    }
}
