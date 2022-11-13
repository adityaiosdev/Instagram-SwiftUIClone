//
//  PostGridView.swift
//  Instagram-SwiftUI
//
//  Created by Aditya Ramadhan on 13/11/22.
//

import SwiftUI

struct PostGridView: View {
    
    private let items = [GridItem(.flexible(), spacing: 2),GridItem(.flexible(), spacing: 2),GridItem(.flexible(), spacing: 2)]
    private let width = UIScreen.main.bounds.width / 3
    
    
    var body: some View {
        LazyVGrid(columns: items,spacing: 1,content: {
            ForEach(0 ..< 10, content: { _ in
                NavigationLink(destination: {
                    ProfileView()
                }, label: {
                    Image("profilepic")
                        .resizable()
                        .scaledToFill()
                        .frame(width: width, height: width)
                        .clipped()
                })
            })
        })
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView()
    }
}
