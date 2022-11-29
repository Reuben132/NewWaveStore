//
//  ProductDetailView.swift
//  NewWaveStore
//
//  Created by Reuben Gottesman (student LM) on 11/28/22.
//

import SwiftUI

struct ProductDetailView: View {
    
    @Binding var product: Product
    @Binding var viewState: ViewState
    
    var body: some View {
        VStack{
            
            HStack{
                Text("<<Back")
                    .onTapGesture {
                        viewState = .list
                    }
                    .foregroundColor(Color.blue)
                    .background(Color.gray)
                    .frame(width: 120, height: 60, alignment: .center)
                    .cornerRadius(8)
                    .padding()
                Spacer()
            }
            
            Image(product.picture)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Spacer()
            
            VStack{
                
                Text("\(product.name)")
                    .font(Constants.textFont.bold())
                    .padding([.leading, .trailing, .bottom], 5)
                
                Text("\(product.description)")
                    .font(Constants.textFont)
                    .padding([.leading, .trailing, .bottom], 5)
                
                
                Text("\(String(format: "$%.2f", product.price))")
                    .font(Constants.textFont)
                    .padding([.leading, .trailing, .bottom], 5)
    
            }
             
            Spacer()
            
            Button {
                //
            } label: {
                Text("Add to Cart")
                    .font(Constants.textFont)
                    .frame(width: UIScreen.main.bounds.width - 60, height: 50 , alignment: .center)
                    .padding([.leading, .trailing, .bottom], 5)
                    .foregroundColor(Color.black)
                    .background(Color.teal)
                    .cornerRadius(15)
            }

        }
        .padding()
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: Binding.constant(Product()), viewState: Binding.constant(.list))
    }
}
