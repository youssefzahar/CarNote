//
//  ProductCard.swift
//  carNote
//
//  Created by youssef-mariem on 25/11/2022.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        ZStack(alignment: .topLeading){
            ZStack(alignment: .bottom){
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                VStack(alignment: .leading){
                    Text(product.name)
                        .bold()
                    Text("\(product.price)DT")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180 , alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
            
            Button{
                cartManager.addToCart(product: product)
                
            }label: {
             Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(50)
                    .padding()
            }
            
        }}}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product:productList[0])
            .environmentObject(CartManager())
    }
}
