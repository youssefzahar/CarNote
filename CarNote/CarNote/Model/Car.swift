//
//  Car.swift
//  carNote
//
//  Created by youssef-mariem on 21/11/2022.
//

import Foundation

struct Car {
    var _id: String
    var modele: String
    var type: String
    var marque: String
    var immatricule: String
    var puissance: Int
    var carburant: String
    var description: String
    var ownedBy: String
    var attribute: String
    var image: String
    var age : Int

    init(_id: String,modele: String,type: String,marque: String,immatricule: String,puissance: Int,carburant: String,description: String,ownedBy: String,attribute: String, image: String, age:Int){
         self._id=_id
        self.modele=modele
        self.type=type
        self.marque=marque
        self.immatricule=immatricule
        self.puissance=puissance
        self.carburant=carburant
        self.description = description
        self.ownedBy=ownedBy
        self.attribute=attribute
        self.image=image
        self.age=age

     }
     






}
