//
//  Item.swift
//  Bookshelf
//
//  Created by Rahul K on 01/10/24.
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
