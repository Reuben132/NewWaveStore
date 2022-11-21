//
//  NewWaveStoreApp.swift
//  NewWaveStore
//
//  Created by Reuben Gottesman (student LM) on 11/18/22.
//

import SwiftUI

@main
struct NewWaveStoreApp: App {
    @StateObject var productList: ProductList = ProductList()
    var body: some Scene {
       
        WindowGroup {
            ContentView()
                .environmentObject(productList)
        }
    }
}
