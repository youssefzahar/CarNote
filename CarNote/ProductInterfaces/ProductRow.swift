//
//  ProductRow.swift
//  carNote
//
//  Created by youssef-mariem on 25/11/2022.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager : CartManager
    //  var product : Product
    
    var body: some View {
        HStack(spacing:20){
            Image("product.image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 10){ //cartManager
                Text("product.name")
                    .bold()
                
                // Text("$\(product.price)")
                
            }
            Spacer()
        }
        .padding(.horizontal)
        .frame(maxWidth:  .infinity,alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(/*product: productList*/)
    }
}
