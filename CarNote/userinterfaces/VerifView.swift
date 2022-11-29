//
//  VerifView.swift
//  carNote
//
//  Created by youssef-mariem on 12/11/2022.
//

import SwiftUI

struct VerifView: View { @State private var email=""
    @State private var emailToken=""
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

                TextField("", text: $viewModel.emailToken)
                    .padding(.all)
                    .background(Color.blue.opacity(0.2))
                    .cornerRadius(10)

            }
          
            HStack{
                
               
                
                
                
                Button("Submit", action:{
                    viewModel.VerifyAccount(emailToken: viewModel.emailToken)
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


struct VerifView_Previews: PreviewProvider {
    static var previews: some View {
        VerifView()
    }
}
