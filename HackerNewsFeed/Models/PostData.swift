//
//  PostData.swift
//  HackerNewsFeed
//
//  Created by Baris Karalar on 11.07.2021.
//

import Foundation

struct Results: Codable {
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    var id: String {
        objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}
