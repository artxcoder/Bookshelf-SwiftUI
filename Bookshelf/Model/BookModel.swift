//
//  BookModel.swift
//  Bookshelf
//
//  Created by Rahul K on 01/10/24.
//

import Foundation
import SwiftData

@Model
final class BookModel {
    var title: String
    var author: String
    var rating: Double?
    
    init(title: String, author: String, rating: Double?) {
        self.title = title
        self.author = author
        self.rating = rating
    }
}
