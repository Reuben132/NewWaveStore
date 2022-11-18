//
//  Product.swift
//  NewWaveStore
//
//  Created by Reuben Gottesman (student LM) on 11/18/22.
//

import Foundation

class Product : ObservableObject {
    
    @Published var name: String
    @Published var description: String
    @Published var picture: String
    @Published var quantity: Int
    @Published var price: Double
    
    init(name: String = "ya mum", description: String = "wadya think? its ya mum", picture: String = "", quantity: Int = 0, price: Double = 0.0) {
        self.name = name
        self.description = description
        self.picture = picture
        self.quantity = quantity
        self.price = price
    }
    
}
