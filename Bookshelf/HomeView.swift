//
//  HomeView.swift
//  Bookshelf
//
//  Created by Rahul K on 01/10/24.
//

import SwiftUI

struct HomeView: View {
    
    @State var books: [BookModel] = [BookModel(title: "Harry Porter", author: "J.K. Rowling", rating: 4.8), BookModel(title: "Lord Of The Rings", author: "Robert Tolkien", rating: 4.0)]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(books) { book in
                    VStack {
                        HStack {
                            Text("Name: \(book.title)")
                            Spacer()
                            Text("\(String(describing: book.rating ?? 0))")
                        }
                        HStack {
                            Text("Author: \(book.author)")
                            Spacer()
                        }
                    }
                }
            }
            .toolbar {
                Button("Add") {
                    let book = BookModel(title: "God Of War", author: "Rahul", rating: 5.0)
                    self.books.append(book)
                }
            }
            .navigationTitle("Books")
        }

    }
}

#Preview {
    HomeView()
}
