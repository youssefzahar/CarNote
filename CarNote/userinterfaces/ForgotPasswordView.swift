//
//  ForgotPasswordView.swift
//  carNote
//
//  Created by youssef-mariem on 12/11/2022.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State private var email=""
    @ObservedObject var viewModel = UserViewModel()
        
        var body: some View {
            ZStack{
                Color.white
                Color.blue.ignoresSafeArea()
                Circle().scale(1.7).foregroundColor(.white.opacity(0.15))
                Circle().scale(1.50).foregroundColor(.white)

            VStack {
                
                HStack{
                    
                    Spacer()
                    Image("logo").resizable().aspectRatio(contentMode: .fill).frame(width: 200, height: 200).clipShape(Circle()).clipped().padding(.all)
                    Spacer()
               
                    
                   
                }
               
                HStack{
                    Spacer()
                    TextField("email", text: $viewModel.email)
                        .padding(.all)
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    Spacer()
                   
                    
                   
                }
                
                HStack{
                    NavigationLink(destination:LoginScreenView()){
                        
                        Button("Submit", action:{
                            viewModel.ResetPassword(email: viewModel.email)
                        })
                        .foregroundColor(.white)
                        .frame(width: 100, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                    }
                        

            }
            }
            }
        }
    }


    struct ForgotPasswordView_Previews: PreviewProvider {
        static var previews: some View {
            ForgotPasswordView()
        }
    }
