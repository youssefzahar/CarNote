//
//  Produit.swift
//  carNote
//
//  Created by youssef-mariem on 25/11/2022.
//

import Foundation
struct Product: Identifiable {
    var id = UUID()
    var name : String
    var image : String
    var price : Int
}
var productList = [Product(name: "P1" , image:"P1N" , price:55 ),
                   Product(name: "P2" , image:"P2" , price: 60),
                   Product(name: "P3" , image:"P3" , price:80 ),
                   Product(name: "P4" , image:"P4" , price: 90),
                   Product(name: "P5" , image:"P5" , price:20 ),
                   Product(name: "P6" , image:"P6" , price:10 ) ]


/*struct Product{
  
    var _id: String
    var title: String
    var stock: Int
    var prix: Int
    var description: String
    var owned_by: String
    var image: String
    
   init(_id: String,title: String,stock: Int,prix: Int,description: String,owned_by: String,image: String){
        self._id=_id
        self.title=title
        self.stock=stock
        self.prix=prix
        self.description=description
        self.owned_by=owned_by
        self.image=image

    }
    
    
    
   
    
}*/

