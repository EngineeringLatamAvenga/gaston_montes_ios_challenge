//
//  Item.swift
//  Uala-Test
//
//  Created by Gastón Montes on 1/8/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
