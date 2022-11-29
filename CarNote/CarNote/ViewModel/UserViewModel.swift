//
//  UserViewModel.swift
//  carNote
//
//  Created by youssef-mariem on 12/11/2022.
//

import Foundation
import Alamofire
import  PhotosUI


class UserViewModel: ObservableObject {

    static let sharedInstance = UserViewModel()
    var email:String = ""
    var password:String = ""
    var first_name:String = ""
    var last_name:String = ""
    var cin:String = ""
    var role:String = ""
    var phone_number:String = ""
   // var image:UIImage?
    var emailToken:String = ""
    var image:String=""
    static var currentUser: User?
    

    var url:String = "http://172.17.2.50:3000/api/user/"

    
    func LogIn(email: String,password: String){ //complited: @escaping(User?)-> Void) {
        let parametres: [String: Any] = [
            "username": email,
            "password": password
        ]
        AF.request(url+"login" , method: .post,parameters: parametres,encoding: JSONEncoding.default)
            .responseJSON {
                (response) in
                switch response.result {
                case .success(let JSON):
                 /*   let response = JSON as! NSDictionary
                    let email = response.object(forKey: "email") as? String ?? ""
                    let  first_name = response.object(forKey: "firstname") as? String ?? ""
                    let  last_name = response.object(forKey: "lastname") as? String ?? ""
                    let  phone_number = response.object(forKey: "phonenumber") as? String ?? ""
                    let   cin = response.object(forKey: "cin") as? String ?? ""
                    let  password = response.object(forKey: "password") as? String ?? ""
                    let  role = response.object(forKey: "role") as? String ?? ""
                    let  emailToken = response.object(forKey: "emailToken") as? String ?? ""
                    let  isVerified = response.object(forKey: "isVerified") as? Bool ?? true
                    let  image = response.object(forKey: "image") as? String ?? ""
                    let  createdAt = response.object(forKey: "createdAt") as? String ?? ""
                    let  updatedAt = response.object(forKey: "updatedAt") as? String ?? ""
                    let  _id = response.object(forKey: "_id") as? String ?? ""

                    var currentUser = User(_id: _id,first_name: first_name,last_name: last_name,cin: cin,email: email,password: password,role: role,phone_number: phone_number,emailToken: emailToken,isVerified: isVerified,image: image,createdAt: createdAt,updatedAt: updatedAt)
                    Self.currentUser = currentUser*/




                    

                    
                    print("success \(JSON)")
                case .failure(let error):
                    print("request failed \(error)")
                }
            }
        print("email : ",email)
        print("password",password)
            
    }
    
    func Register( first_name:String, last_name:String, cin:String, email: String, password: String, phone_number:String, role:String,  image:String) {
        let parametres: [String: Any] = [
            "first_name": first_name,
            "last_name": last_name,
            "cin":cin,
            "email": email,
            "password":password,
            "phone_number":phone_number,
            "role":role,
            "image":image
        ]
        AF.request(url+"register" , method: .post,parameters: parametres,encoding: JSONEncoding.default)
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
    
    func VerifyAccount(emailToken: String) {
        let parametres: [String: Any] = [
            "token":emailToken
        ]
        AF.request(url+"verifyAccount" , method: .post,parameters: parametres,encoding: JSONEncoding.default)
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
    
    func ResetPassword(email: String) {
        let parametres: [String: Any] = [
            "username": email
        ]
        AF.request(url+"forgotPassword" , method: .post,parameters: parametres,encoding: JSONEncoding.default)
            .responseJSON {
                (response) in
                switch response.result {
                case .success(let JSON):
                    print("success \(JSON)")
                    print("email : ",email)
                case .failure(let error):
                    print("request failed \(error)")
                }
            }
        

    }
    
    
    func DeleteUser(email: String) {
        let parametres: [String: Any] = [
            "userId": email
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
    
    
       func UpdateUser(email: String ,first_name:String, last_name:String, phone_number:String,image:String) {
        let parametres: [String: Any] = [
            "userId": email,
            "first_name": first_name,
            "last_name": last_name,
            "phone_number":phone_number,
            "image":image

       
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
    
    
    func ShowUser(email: String ,first_name:String, last_name:String, phone_number:String, image:String) {
     let parametres: [String: Any] = [
         "userId": email,
          ]
        
        

     AF.request(url+"show" , method: .get,parameters: parametres,encoding: JSONEncoding.default)
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
