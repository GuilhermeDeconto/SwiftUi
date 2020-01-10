//
//  SettingsView.swift
//  teste
//
//  Created by Guilherme Deconto on 10/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct SettingsView : View {
    
    @ObservedObject var setting = Settings()
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    SignInView()
                }
                Section {
                    BluetoothView()
                    WifiView()
                }
                ForEach(Option.options,id: \.id) { settingOption in
                    OptionRow(option: settingOption)
                }
            }
            .navigationBarTitle(Text("Settings")).font(.largeTitle)
        }
    }
}
