//
//  ModifyProductUIView.swift
//  carNote
//
//  Created by youssef-mariem on 26/11/2022.
//

import SwiftUI

struct ModifyProductUIView: View {
    
    @State private var title = ""

 @State private var stock = 0
    @State private var prix = 0

 @State private var description = ""

 @State private var owned_by = ""
 @State private var image = ""
 
 

    @ObservedObject var viewModel = ProduitViewModel()
    var body: some View {
        NavigationView {
            
            
            ZStack{
                LinearGradient(gradient:Gradient(colors: [.blue,.white]), startPoint: .topTrailing, endPoint:.bottomLeading)
                    .ignoresSafeArea(.all)
                VStackLayout{
                    
                    
                    Text("Modifier Produit").font(.largeTitle).bold().padding().foregroundColor(.white)
                    Spacer().frame(height: 90)
                    
                    VStack(alignment: .leading, spacing: 50){
                        HStack{
                            TextField("Title", text: $viewModel.title)
                                .padding()
                                .frame(width: 300, height: 70)
                                .background(Color.black.opacity(0.05))
                                .cornerRadius(10)
                            
                        }
                        
                        HStack{
                            TextField("Stock",value: $viewModel.stock,format: .number)
                                .padding()
                                .frame(width: 300, height: 70)
                                .background(Color.black.opacity(0.05))
                                .cornerRadius(10)
                            
                        }
                        
                        HStack{
                            TextField("Prix",value: $viewModel.prix,format: .number)
                                .padding()
                                .frame(width: 300, height: 70)
                                .background(Color.black.opacity(0.05))
                                .cornerRadius(10)
                        }
                        HStack{
                            TextField("description", text : $viewModel.description)
                                .padding()
                                .frame(width: 300, height: 100)
                                .background(Color.black.opacity(0.05))
                                .cornerRadius(10)
                        }
                        Spacer()
                        
                    }
                    
                    HStack{
                      /*  NavigationLink(destination:UserProfileView()){
                            Button("Delete Produit",action:{viewModel.DeleteProduit(_id:)
                                
                            })
                            .foregroundColor(.white)
                            .frame(width: 100, height: 50)
                            .background(Color.red)
                            .cornerRadius(10)
                            
                            
                        }*/
                        
                        
                        
                        
                        
                        
                        
                    /*    NavigationLink(destination:UserProfileView()){
                            Button("Modifier Produit",action:{viewModel.UpdateProduit(title:viewModel.title, stock:viewModel.stock, prix:viewModel.prix, description: viewModel.description)
                                
                            })
                            .foregroundColor(.white)
                            .frame(width: 100, height: 50)
                            .background(Color.blue)
                            .cornerRadius(10)
                            
                            
                        }*/
                       
                        
                        
                        
                    }
                }
            }
            .navigationBarHidden(true)
            
        }}
}

struct ModifyProductUIView_Previews: PreviewProvider {
    static var previews: some View {
        ModifyProductUIView()
    }
}
