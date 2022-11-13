//
//  FeedView.swift
//  Instagram-SwiftUI
//
//  Created by Aditya Ramadhan on 13/11/22.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        VStack {
            TopBar()
            ScrollView {
                StoryView()
                    .padding(.leading, 8)
                ForEach(0 ..< 10, content: { _ in
                    FeedCell()
                })
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
