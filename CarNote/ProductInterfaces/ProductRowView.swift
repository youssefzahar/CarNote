//
//  ProductRowView.swift
//  carNote
//
//  Created by youssef-mariem on 12/12/2022.
//

import SwiftUI

struct ProductRowView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var product : Product
    
    var body: some View {
        HStack(spacing: 20){
            AsyncImage(url: URL(string: "http://172.17.1.0:3000/uploads/"+product.image!),
                content:{ image in
                    image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            },placeholder: { })

            
            VStack(alignment: .leading, spacing: 10){
                Text(product.title)
                    .bold()
                
                Text("\(product.prix!,format: .number)€")

            }
             Spacer()

            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity,alignment: .leading)
    }
}

struct ProductRowView_Previews: PreviewProvider {
    static var previews: some View {
        ProductRowView(product : productList[3]).environmentObject(CartManager())    }
}
