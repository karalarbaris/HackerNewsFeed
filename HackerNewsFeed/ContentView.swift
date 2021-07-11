//
//  ContentView.swift
//  HackerNewsFeed
//
//  Created by Baris Karalar on 11.07.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("Hacker News Feed")
        }
            
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

let posts = [
    Post(id: "1", title: "sadfassdf"),
    Post(id: "2", title: "khjg ghkhjkjh"),
    Post(id: "3", title: "cn cv cvbbcvcvb ")
]
