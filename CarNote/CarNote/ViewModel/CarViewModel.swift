//
//  CarViewModel.swift
//  carNote
//
//  Created by youssef-mariem on 22/11/2022.
//

import Foundation
import Alamofire


class CarViewModel : ObservableObject{
    
    static let sharedInstance = CarViewModel()
    var _id: String = ""
    var modele: String = ""
    var type: String = ""
    var marque: String = ""
    var immatricule: String = ""
    var puissance: Int = 0
    var carburant: String = ""
    var description: String = ""
    var ownedBy: String = ""
    var attribute: String = ""
    var image: String = ""
    var age : Int = 0
    
    var url:String = "http://172.17.13.160:3000/api/car/"

    
    func DeleteCar(_id: String) {
        let parametres: [String: Any] = [
            "carId": _id
        ]
        AF.request(url+"delete" , method: .post,parameters: parametres,encoding: JSONEncoding.default)
            .responseJSON {
                (response) in
                switch response.result {
                case .success(let JSON):
                    print("success \(JSON)")
                case .failure(let error):
                    print("request failed \(error)")
                }
            }
        

    }
    
    
    func AddCar( modele:String, type:String, marque:String, immatricule: String,  puissance: Int, carburant:String, description:String,   age : Int ) {
        let parametres: [String: Any] = [
            "modele": modele,
            "immatricule": immatricule,
            "type":type,
            "marque": marque,
           "puissance": puissance,
            "carburant": carburant,
           "description": description,
            "age": age
        ]
        AF.request(url+"add" , method: .post,parameters: parametres,encoding: JSONEncoding.default)
            .responseJSON {
                (response) in
                switch response.result {
                case .success(let JSON):
                    print("success \(JSON)")
                case .failure(let error):
                    print("request failed \(error)")
                }
            }
            
    }
    
    
  
    
    
    
    
    
    
    
    
    
    
    
}
