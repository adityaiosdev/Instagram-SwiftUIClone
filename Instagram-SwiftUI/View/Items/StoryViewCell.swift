//
//  StoryViewCell.swift
//  Instagram-SwiftUI
//
//  Created by Aditya Ramadhan on 13/11/22.
//

import SwiftUI

struct StoryViewCell: View {
    var body: some View {
        VStack{
            Image("profilepic")
                .resizable()
                .scaledToFill()
                .frame(width: 65, height: 65)
                .clipShape(Circle())
            Text("Your story")
                .font(.system(size: 14))
        }
    }
}

struct StoryViewCell_Previews: PreviewProvider {
    static var previews: some View {
        StoryViewCell()
    }
}
