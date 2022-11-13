//
//  StoryView.swift
//  Instagram-SwiftUI
//
//  Created by Aditya Ramadhan on 13/11/22.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false){
            HStack (spacing: 20){
                ForEach (0 ..< 15) { _ in
                    StoryViewCell()
                }
            }
        }
        Rectangle()
            .foregroundColor(.gray)
            .frame(width: UIScreen.main.bounds.width, height: 0.15)
            .opacity(0.4)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
