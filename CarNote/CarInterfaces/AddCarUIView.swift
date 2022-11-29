//
//  AddCarUIView.swift
//  carNote
//
//  Created by youssef-mariem on 21/11/2022.
//

import SwiftUI


struct AddCarUIView: View {
    
  /*  struct selectioncarburant {

    }*/
    
    @State private var modele=""
   // @State private var type=""
    //@State private var marque=""
    @State private var immatricule=""
    @State private var puissance=""
    //@Binding public var email :String
    
   // @State private var carburant = ""
    @State private var description=""
    // @State private var ownedBy
    @State private var image=""
    @State private var age=""
    
    //let carburant = [selectioncarburant].self()
    @State private var type = ""
    @State private var marque = ""

    
 //   @State var selectioncarburant = ["Essence","Gasoil"]
 //   @State var selectiontype = ["Voiture","Moto","Bus"]
 //   @State var selectionmarque = ["Ford","Hyndai","BMW","Volswagen","Mercedes"]


    
    //@State private var image=""
    @ObservedObject var viewModel = CarViewModel()
    
    var body: some View {
        NavigationView {
           
                
                ZStack{
                    LinearGradient(gradient:Gradient(colors: [.blue,.white]), startPoint: .topTrailing, endPoint:.bottomLeading)
                        .ignoresSafeArea(.all)
                    VStackLayout{
                        
                        /*  Image("logo").resizable().aspectRatio(contentMode: .fit).frame(width: 100, height: 100).clipShape(Circle()).padding()*/
                        Text("Add car").font(.largeTitle).bold().padding()
                        ScrollView{
                            TextField("Modele", text: $viewModel.modele)
                                .padding()
                                .frame(width: 300, height: 50)
                                .background(Color.black.opacity(0.05))
                                .cornerRadius(10)
                            
                            TextField("Type", text: $viewModel.type)
                                .padding()
                                .frame(width: 300, height: 50)
                                .background(Color.black.opacity(0.05))
                                .cornerRadius(10)
                            
                         /*   Picker(selection: $type, label: Text("Type")){
                            ForEach(0 ..< selectiontype.count ) {
                                Text(self.selectiontype[$0]).tag($0)
                                }
                                
                            }*/

                            
                            TextField("Marque", text: $viewModel.marque)
                                .padding()
                                .frame(width: 300, height: 50)
                                .background(Color.black.opacity(0.05))
                                .cornerRadius(10)
                            
                         /*   Picker(selection: $marque, label: Text("Type")){
                            ForEach(0 ..< selectionmarque.count ) {
                                Text(self.selectionmarque[$0]).tag($0)
                                }
                                
                            }*/
                            
                            TextField("Immatricule", text: $viewModel.immatricule)
                                .padding()
                                .frame(width: 300, height: 50)
                                .background(Color.black.opacity(0.05))
                                .cornerRadius(10)
                            
                            TextField("Puissance", value: $viewModel.puissance,format: .number)
                                .padding()
                                .frame(width: 300, height: 50)
                                .background(Color.black.opacity(0.05))
                                .cornerRadius(10)
                            
                            TextField("carburant", text: $viewModel.carburant)
                                .padding()
                                .frame(width: 300, height: 50)
                                .background(Color.black.opacity(0.05))
                                .cornerRadius(10)
                            
                         //   Form{
                              //  Section {
                                  /*  Picker(selection: $carburant , label: Text("Carburant")){
                                    ForEach(0 ..< selectioncarburant.count ) {
                                        Text(self.selectioncarburant[$0]).tag($0)
                                        }
                                        
                                    }*/
                              //  }
                         //   }.navigationBarTitle(Text("Carburant"))
                            
                            
                            
                            TextField("description", text: $viewModel.description)
                                .padding()
                                .frame(width: 300, height: 50)
                                .background(Color.black.opacity(0.05))
                                .cornerRadius(10)
                            
                            TextField("age", value: $viewModel.age,format:.number)
                                .padding()
                                .frame(width: 300, height: 50)
                                .background(Color.black.opacity(0.05))
                                .cornerRadius(10)
                            
                            
                            
                            
                            
                            
                            /*     Button("Upload image"){}
                             .foregroundColor(.blue)
                             .frame(width: 300, height: 50)
                             .background(Color.white)
                             .cornerRadius(10)*/
                            
                            
                            /*   TextField("image", text: $viewModel.image)
                             .padding()
                             .frame(width: 300, height: 50)
                             .background(Color.black.opacity(0.05))
                             .cornerRadius(10)*/}
                    
                        NavigationLink(destination:UserProfileView()){
                            Button("Add Car",action:{viewModel.AddCar(modele:viewModel.modele, type:viewModel.type, marque:viewModel.marque, immatricule:viewModel.immatricule, puissance:viewModel.puissance, carburant:viewModel.carburant, description: viewModel.description, age: viewModel.age) //image:viewModel.image?
                                
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




struct AddCarUIView_Previews: PreviewProvider {
    static var previews: some View {
        AddCarUIView()
    }
}
