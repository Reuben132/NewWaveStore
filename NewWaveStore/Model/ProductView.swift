//
//  ProductView.swift
//  NewWaveStore
//
//  Created by Reuben Gottesman (student LM) on 11/21/22.
//

import SwiftUI

struct ProductView: View {
    
    @Binding var product: Product
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Image(product.picture)
                        .resizable()
                    
                    Text(product.price)
                    
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}
