//
//  ProduitViewModel.swift
//  carNote
//
//  Created by youssef-mariem on 26/11/2022.
//

import Foundation
import Alamofire



class ProduitViewModel : ObservableObject{
    static let sharedInstance = ProduitViewModel()
    
    var _id: String = ""
    var title : String = ""
    var stock : Int = 0
    var prix : Int = 0
    var description : String  = ""
    var owned_by : String = ""
   var image : String = ""
    
    var url:String = "http://172.17.5.23:3000/api/product/"
    
    func AddProduct( title:String, stock:Int, prix:Int, description: String) {
        let parametres: [String: Any] = [
            "title": title,
            "stock": stock ,
            "prix":prix,
            "description": description
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
    
    
    func DeleteProduit(_id: String) {
        let parametres: [String: Any] = [
            "produitId": _id
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
    
    
    func UpdateProduit( title:String, stock:Int, prix:Float, description: String) {
     let parametres: [String: Any] = [
        
        "title":title,
        "stock": stock,
        "prix": prix,
       "description": description
        
    
          ]
     AF.request(url+"update" , method: .post,parameters: parametres,encoding: JSONEncoding.default)
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
