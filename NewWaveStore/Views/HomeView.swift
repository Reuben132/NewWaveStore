//
//  HomeView.swift
//  NewWaveStore
//
//  Created by Reuben Gottesman (student LM) on 11/28/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var products: ProductList
    @Binding var viewState: ViewState
    @Binding var index: Int
    
    var body: some View {
        ScrollView{
            ForEach($products.productList.indices){ index in
                ProductView(product: $products.productList[index])
                    .padding([.leading, .trailing, .bottom], 5)
                    .onTapGesture {
                        self.index = index
                        viewState = .detail
                    }
            }
            .padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewState: Binding.constant(.list), index: Binding.constant(0))
            .environmentObject(ProductList())
            
    }
}
