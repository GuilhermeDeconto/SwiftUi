//
//  OptionRow.swift
//  teste
//
//  Created by Guilherme Deconto on 10/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct OptionRow: View {
    let option: Option
    var body: some View {
        Group() {
            if option.isAddSection {
                Section {
                    OptionSettingsView(option: option)
                }
            } else {
                OptionSettingsView(option: option)
            }
        }
    }
}
