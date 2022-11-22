//
//  ProfileView.swift
//  carNote
//
//  Created by youssef-mariem on 12/11/2022.
//

import SwiftUI

struct ProfileView: View {
    @Binding public var email :String
    @ObservedObject var viewModel = UserViewModel()

    var body: some View {
            ZStack{
                Color.white

            VStack {
                HStack{
                    Spacer()
                    Image("logo").resizable().aspectRatio(contentMode: .fill).frame(width: 200, height: 200).clipShape(Circle()).clipped()
                    
                    Spacer()
                }
         
                HStack{
                    Spacer()
                    Text(viewModel.first_name).foregroundColor(.blue).font(.title).padding()
                    Text(viewModel.last_name).foregroundColor(.blue).font(.title).padding()
                    Spacer()
                }
             
                Text("+216 12345678").foregroundColor(.blue).font(.title).padding()
                Text("foulenbenfoulen.com").foregroundColor(.blue).font(.title).padding()
                
/*                NavigationLink(destination:ModifyView(){ Text("Modifier mon profil")
                    .foregroundColor(.blue)
                    .frame(width: 200, height: 50)
     
                }*/
                
                NavigationLink(destination:ModifyView(email:$email)){
                    Text("Modifier mon profil")                        .foregroundColor(.white)
                        .frame(width: 100, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                       
                    }
                
                NavigationLink(destination:LoginScreenView()){
                    Text("Logout")
                    .foregroundColor(.blue)
                    .frame(width: 200, height: 50)
     
                }
                
                 Button("Delete", action:{
                    viewModel.DeleteUser(email: viewModel.email)
                })
                        .foregroundColor(.white)
                        .frame(width: 100, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                       
                    


            }
            }
            .navigationBarHidden(true)
            .onAppear(){
                let user = viewModel

            }
            
        }
    }

   /* struct ProfileView_Previews: PreviewProvider {
      /*  static var previews: some View {
            ProfileView()
        }*/
    }*/
