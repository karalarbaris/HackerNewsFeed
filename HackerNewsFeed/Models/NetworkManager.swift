//
//  NetworkManager.swift
//  HackerNewsFeed
//
//  Created by Baris Karalar on 11.07.2021.
//

import Foundation

class NetworkManager {
    
    func fetchData() {
        
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page ") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let data = data {
                        do {
                            let results = try decoder.decode(Results.self, from: data)
                        }
                        catch {
                            print(error.localizedDescription)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
