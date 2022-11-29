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
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .padding()
                    
                    VStack{
                        
                        Text("\(product.name)")
                            .font(Constants.textFont.bold())
                            .padding([.leading, .trailing, .bottom], 5)
                            
                        Text("\(product.description)")
                            .font(Constants.textFont)
                            .padding([.leading, .trailing, .bottom], 5)
                            
                        
                        Text("\(String(format: "$%.2f", product.price))")
                            .font(Constants.textFont.bold())
                            .padding([.leading, .trailing, .bottom], 5)
                            .foregroundColor(Color.brown)
                    }
                    
                    
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(product: Binding.constant(Product()))
    }
}
