//
//  LoginScreenView.swift
//  carNote
//
//  Created by youssef-mariem on 12/11/2022.
//

import SwiftUI

struct LoginScreenView: View {
    @State private var email=""
        @State private var password=""
        @ObservedObject var viewModel = UserViewModel()
        var body: some View {
            NavigationView{
                ZStack{
                    Color.blue.ignoresSafeArea()
                    Circle().scale(1.7).foregroundColor(.white.opacity(0.15))
                    Circle().scale(1.50).foregroundColor(.white)
                    VStack{
                        Image("logo").resizable().aspectRatio(contentMode: .fit).frame(width: 200, height: 200).clipShape(Circle())
                        Text("Login").font(.largeTitle).bold().padding()
                        
                        TextField("email", text: $viewModel.email)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        SecureField("Password", text: $viewModel.password)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        
                        
                        NavigationLink(destination:HomeView(/*email:$email*/)){ Button("Login", action:{
                            viewModel.LogIn(email: viewModel.email, password: viewModel.password)
                        })
                                .foregroundColor(.white)
                                .frame(width: 100, height: 50)
                                .background(Color.blue)
                                .cornerRadius(10)
                               
                            }
                        NavigationLink(destination:RegisterView()){
                        
                        
                        Text("Sign up")                .foregroundColor(.white)
                        .frame(width: 100, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                        
                    }
                        NavigationLink(destination:ForgotPasswordView()){
                            Text("Forgot Password")
                                .foregroundColor(.blue)
                                .frame(width: 200, height: 100)
                                .background(Color.white)
                                .cornerRadius(10)
                        }
                    }
                } .navigationBarHidden(true)
                
            }
            
        }
        
        struct LoginScreenView_Previews: PreviewProvider {
            static var previews: some View {
                Group {
                    LoginScreenView()
                        .previewInterfaceOrientation(.portrait)
                }
            }
        }
    }
