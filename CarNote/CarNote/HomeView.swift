//
//  ContentView.swift
//  carNote
//
//  Created by youssef-mariem on 12/11/2022.
//

import SwiftUI
import CoreData

struct HomeView: View {
    
    
    var body: some View {
        TabView {
          //  ContentView()
         ShowProduct()  .tabItem{
                    Image(systemName: "cart")
                    Text("Shop")
                }
            CarUIView().tabItem{
                Image(systemName: "car")
                Text("Car")
            }
            AddCarUIView() .tabItem{
                Image(systemName: "plus.circle.fill")
                Text("Add")
            }
            ChatUIView()  .tabItem{
                Image(systemName: "bolt.horizontal.circle.fill")
                Text("Chat")
            }
            UserProfileView()
                .tabItem{
                Image(systemName: "person")
                Text("Account")
            }
            
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
