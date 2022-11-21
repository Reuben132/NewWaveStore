//
//  ProductList.swift
//  NewWaveStore
//
//  Created by Reuben Gottesman (student LM) on 11/18/22.
//

import Foundation

class ProductList : ObservableObject{
    
    
    @Published var productList: [Product]
    
    init() {
        
        self.productList = [Product(name: "NW-PC", description: "", picture: "NW-PC", quantity: 100, price: 500), Product(name: "wPhone", description: "", picture: "wPhone", quantity: 100, price: 200), Product(name: "wPen", description: "", picture: "wPen", quantity: 100, price: 20), Product(name: "software", description: "", picture: "software", quantity: 2000, price: 150)]
    }
    
    
}
