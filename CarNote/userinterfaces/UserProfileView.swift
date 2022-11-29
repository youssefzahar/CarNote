//
//  UserProfileView.swift
//  carNote
//
//  Created by youssef-mariem on 21/11/2022.
//

import SwiftUI

struct UserProfileView: View {
    @State private var isShowingAlert = false
    var body: some View {
        VStack{
            VStack{
                Image("logo")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                Text("Youssef Zahar")
                    .font(.title)
                    .bold()
            }
            
            Spacer().frame(height: 30)
            
            VStack(alignment: .leading, spacing: 12){
             

                
                HStack{
                    Image(systemName: "envelope")
                    Text("youssef.zahar@esprit.tn")
                }
                
                HStack{
                    Image(systemName: "phone")
                    Text("+216 56 330 407")
                       
                }
                
            }
            Spacer().frame(height: 150)
            
            /********************/
            
            
            NavigationLink(destination:ModifyView()){ Button("Update profile", action:{
            })
            .bold()
            .frame(width: 120, height: 50)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(12)
                   
                }
            
            
            
            
            
        /*************************************/
            
            
            
                
                Button{
                    isShowingAlert = true
                }label: {
                    Text("Delete")
                        .bold()
                        .frame(width:120, height: 50)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        .alert("Are you Sure ?", isPresented: $isShowingAlert){
                            Button("Delete",role: .destructive){
                                print("Profile Deleted")}
                        }
                }
            
            
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
