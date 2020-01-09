//
//  Apps.swift
//  teste
//
//  Created by Guilherme Deconto on 09/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import Foundation
import SwiftUI

struct Apps: Identifiable, Hashable {
    
    var id = UUID()
    var name: String = ""
    var description: String = ""
    var inAppPurchase: Bool = false
    var image: String = ""
    
}
//let testData = [
//    Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
//    Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
//    Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
//    Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
//    Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
//    Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
//    Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
//    Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
//    Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
//    Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
//    Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
//    Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
//    Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
//    Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
//    Apps(name: "Dig This!", description: "Digging puzzles? Dig this!", inAppPurchase: true, image: "dig"),
//]
