//
//  RegisterView.swift
//  carNote
//
//  Created by youssef-mariem on 12/11/2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var first_name=""
            @State private var last_name=""
            @State private var cin=""
            @State private var password=""
            @State private var email=""
            @State private var role=""
        @State private var phone_number=""
        //@State private var image=""
    @ObservedObject var viewModel = UserViewModel()

        var body: some View {
            NavigationView{
                ZStack{

                    VStack{
                      /*  Image("logo").resizable().aspectRatio(contentMode: .fit).frame(width: 100, height: 100).clipShape(Circle()).padding()*/
                        Text("Register").font(.largeTitle).bold().padding()
                        
                        TextField("First Name", text: $viewModel.first_name)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                                  
                        TextField("Last Name", text: $viewModel.last_name)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                                  
                        TextField("Cin", text: $viewModel.cin)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        
                        TextField("Email", text: $viewModel.email)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        
                        TextField("Password", text: $viewModel.password)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        
                        TextField("Phone Number", text: $viewModel.phone_number)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        
                        
                        
                        TextField("role", text: $viewModel.role)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        
                   /*     Button("Upload image"){}
                            .foregroundColor(.blue)
                            .frame(width: 300, height: 50)
                            .background(Color.white)
                            .cornerRadius(10)*/
                    /*    TextField("image", text: $viewModel.image)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)*/
                        
                        
                        NavigationLink(destination:VerifView()){
                            Button("Register",action:{viewModel.Register(first_name:viewModel.first_name, last_name:viewModel.last_name, cin:viewModel.cin, email: viewModel.email, password: viewModel.password, phone_number:viewModel.phone_number, role:viewModel.role, image:viewModel.image) //image:viewModel.image?
                                                    
                                                })
                                                        .foregroundColor(.white)
                                                        .frame(width: 100, height: 50)
                                                        .background(Color.blue)
                                                        .cornerRadius(10)
                            
                                            
                                        }
                        
                        
                    }
                }
            }
            .navigationBarHidden(true)
            
        }
    }

    struct RegisterView_Previews: PreviewProvider {
        static var previews: some View {
            RegisterView()
        }
    }
