//
//  DetailView.swift
//  HackerNewsFeed
//
//  Created by Baris Karalar on 11.07.2021.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.youtube.com/")
    }
}


