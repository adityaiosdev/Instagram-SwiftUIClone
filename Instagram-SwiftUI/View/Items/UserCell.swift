//
//  UserCell.swift
//  Instagram-SwiftUI
//
//  Created by Aditya Ramadhan on 13/11/22.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            Image("profilepic")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            VStack (alignment: .leading){
                Text("eyditye")
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .font(.system(size: 16))
                Text("adit")
                    .fontWeight(.light)
                    .foregroundColor(.black)
                    .font(.system(size: 16))
            }
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
