//
//  Productt.swift
//  carNote
//
//  Created by youssef-mariem on 26/11/2022.
//

import Foundation
struct Produit{
    
    var _id: String
    var title: String
    var stock: Int
    var prix: Float
    var description: String
    var owned_by: String
    var image: String
    
    init(_id: String,title: String,stock: Int,prix: Float,description: String,owned_by: String,image: String){
        
        self._id=_id
        self.title=title
        self.stock=stock
        self.prix=prix
        self.description=description
        self.owned_by=owned_by
        self.image=image
        
    }
}
