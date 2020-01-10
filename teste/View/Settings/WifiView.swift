//
//  WifiView.swift
//  teste
//
//  Created by Guilherme Deconto on 10/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct WifiView: View {
    @ObservedObject var wifi = Settings()
    
    var body: some View {
        return NavigationLink(destination: ToggleWifiView(wifi: wifi)) {
            HStack() {
                if wifi.isWifiOn {
                    Image(systemName: "wifi")
                    .resizable()
                    .cornerRadius(12)
                    .frame(width: 25, height: 25)
                    .clipped()
                    .aspectRatio(contentMode: .fit)
                }else{
                    Image(systemName: "wifi.slash")
                    .resizable()
                    .cornerRadius(12)
                    .frame(width: 25, height: 25)
                    .clipped()
                    .aspectRatio(contentMode: .fit)
                }
                Text("Wifi")
                    .foregroundColor(.blue)
                    .font(.system(size: 20))
                    .frame(width: 150,height: 40, alignment: .leading)
                Text(wifi.isWifiOn ? "On" : "Off")
                    .foregroundColor(.gray)
                    .font(.system(size: 20))
                    .font(.subheadline)
                    .frame(width: 170, height: 40, alignment: .trailing)
            }
        }
    }
}

struct ToggleWifiView: View {
    @ObservedObject var wifi: Settings
    
    var body: some View {
        Form {
            Section(header: Text("ENABLE TO CONNECT WITH NEARBY NETWORK DEVICES")) {
                Toggle(isOn: $wifi.isWifiOn) {
                    Text("Wifi")
                }
                
                if wifi.isWifiOn {
                    HStack {
                        Text("Searching for nearby network devices...")
                            .foregroundColor(.gray)
                            .font(.system(size: 18))
                            .font(.system(.subheadline))
                        ActivityIndicator(style: .medium)
                    }
                }
            }
        }
    }
}
