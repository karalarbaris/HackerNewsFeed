//
//  ContentView.swift
//  HackerNewsFeed
//
//  Created by Baris Karalar on 11.07.2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView {
            List(networkManager.posts) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
                
            }
            .navigationBarTitle("Hacker News Feed")
        }
        .onAppear(perform: {
            networkManager.fetchData()
        })
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct Post: Identifiable {
//    let id: String
//    let title: String
//}

//let posts = [
//    Post(id: "1", title: "sadfassdf"),
//    Post(id: "2", title: "khjg ghkhjkjh"),
//    Post(id: "3", title: "cn cv cvbbcvcvb ")
//]
