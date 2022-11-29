//
//  DetailProduct.swift
//  carNote
//
//  Created by youssef-mariem on 29/11/2022.
//
import Alamofire
import SwiftUI
import SDWebImageSwiftUI
import SwiftyJSON

struct DetailProduct: View {
    let productItem : datatype
    var body: some View {
        VStack(alignment: .leading){
        VStack {
            Text(productItem.title)
                .font(.title2)
                multilineTextAlignment(.leading)
        }
        Spacer()
        }
        .padding()
        .navigationBarTitle(Text(productItem.title), displayMode: .automatic)

    }
}
/*
class Detail : ObservableObject {
    @Published var datas = [datatypedet]()
    
        //print("2")
    }

struct datatypedet : Identifiable{
    var id : String
    var title : String
    var image : String
    var description : String
}

struct cardDet : View {
    
    var title = ""
    var image = ""
    var description = ""
    var body: some View {
        
        HStack {
            /*AnimatedImage(image: URL(string: image)!).resizable().frame(width: 60, height: 60).clipShape(Circle()).shadow(radius: 20)*/
            
            
            Text(title).fontWeight(.heavy)
            Text(description).fontWeight(.heavy)

        }
        
    }
    
    
    
}
*/
