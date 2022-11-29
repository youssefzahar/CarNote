//
//  ModifyView.swift
//  carNote
//
//  Created by youssef-mariem on 12/11/2022.
//

import SwiftUI
import PhotosUI



struct ModifyView: View {
    @State private var first_name=""
            @State private var last_name=""
   // @State public var image: UIImage
    @State private var phone_number=""
    //@Binding public var email :String
    @State private var selectedItem: PhotosPickerItem? = nil
    @State private var selectedImageData: Data? = nil

    @ObservedObject var viewModel = UserViewModel()
        
        var body: some View {
            NavigationView{
                ZStack{
                    
                    VStack{
                        Image("logo").resizable().aspectRatio(contentMode: .fit).frame(width: 200, height: 200).clipShape(Circle()).padding()
                        Text("Modify Profile").font(.largeTitle).bold().padding()
                        
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
                        
                        
                        /*image piker*/
                        PhotosPicker(
                            selection: $selectedItem,
                            matching: .images,
                            photoLibrary: .shared()) {
                                Text("Select a photo")
                            }
                            .onChange(of: selectedItem) { newItem in
                                Task {
                                    // Retrieve selected asset in the form of Data
                                    if let data = try? await newItem?.loadTransferable(type: Data.self) {
                                        selectedImageData = data
                                    }
                                }
                            }
                        
                        if let selectedImageData,
                           let uiImage = UIImage(data: selectedImageData) {
                            Image(uiImage: uiImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 250, height: 250)
                        }
                    }
                        
                        /*!!!!!!!!!!!!!!!!!!*/
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        TextField("Phone Number", text: $viewModel.phone_number)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        
                      
                        
                     
                
                      /*  Button("Upload image"){}
                            .foregroundColor(.blue)
                            .frame(width: 300, height: 50)
                            .background(Color.white)
                            .cornerRadius(10)
                        */
                        
                        
                        
                        
                        
                        NavigationLink(destination:ProfileView(/*email:$email*/)){ Button("Save Profile", action:{
                            viewModel.UpdateUser(email: viewModel.email,first_name:viewModel.first_name, last_name:viewModel.last_name, phone_number:viewModel.phone_number,
                                                 image:viewModel.image)  //image!)
                        })
                                .foregroundColor(.white)
                                .frame(width: 100, height: 50)
                                .background(Color.blue)
                                .cornerRadius(10)
                               
                            }
                        
                         
                         
                       
                        
                        
    
                        
                        
                        
                    }
                }.navigationBarHidden(true)
            }
            
        }
    
    
    

    /*struct ModifyView_Previews: PreviewProvider {
        static var previews: some View {
            ModifyView()

            }  }*/
