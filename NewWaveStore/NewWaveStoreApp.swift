//
//  NewWaveStoreApp.swift
//  NewWaveStore
//
//  Created by Reuben Gottesman (student LM) on 11/18/22.
//

import SwiftUI

@main
struct NewWaveStoreApp: App {
    
    @StateObject var products: ProductList = ProductList()
    
    var body: some Scene {
       
        WindowGroup {
            ContentView()
                .environmentObject(products)
        }
    }
}
