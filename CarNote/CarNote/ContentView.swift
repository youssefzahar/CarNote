//
//  ContentView.swift
//  carNote
//
//  Created by youssef-mariem on 25/11/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 150), spacing: 30)]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns, spacing: 20){
                    ForEach(productList, id: \.id) {
                        product in ProductCard(product : product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Product Shop"))
            .toolbar{
                NavigationLink{
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                    
                }
            }
            }
        .navigationViewStyle(StackNavigationViewStyle())
        }
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
