//
//  Settings.swift
//  teste
//
//  Created by Guilherme Deconto on 10/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI
import Combine

class Settings: ObservableObject {
    var didChange = PassthroughSubject<Void, Never>()
    
    @Published var isBluetoothOn = false { didSet { update() } }
    
    @Published var isWifiOn = false {didSet { update() } }
    
    @Published var isToggleOn = false { didSet { update() } }
    
    func update() {
        didChange.send(())
    }
}
