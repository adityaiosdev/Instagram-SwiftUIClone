//
//  FeedCell.swift
//  Instagram-SwiftUI
//
//  Created by Aditya Ramadhan on 13/11/22.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 8) {
            ZStack {
                HStack{
                    HStack {
                        NavigationLink (destination: ProfileView(), label: {
                            Image("profilepic")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 36, height: 36)
                                .clipShape(Circle())
                            Text("eyditye")
                                .foregroundColor(.black)
                            Spacer()
                        })
                    }
                    .padding(.horizontal, 8)
                    Spacer()
                    Text("...")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .padding(.top,-8)
                        .padding(.trailing,10)
                    
                }
            }
            Image("feedpic")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 440)
                .clipped()
            HStack (spacing : 20){
                Button(action: {
                    
                }, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 22, height: 20)
                })
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .frame(width: 22, height: 20)
                })
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .frame(width: 22, height: 20)
                })
            }
            .foregroundColor(.black)
            .padding(.horizontal, 16)
            .padding(.top, 4)
            
            HStack {
                Text ("eyditye").font(.system(size: 16, weight: .semibold)) +
                Text (" Lagi ngeliatin piya dari jauh.").font(.system(size: 16))
            }
            .padding(.horizontal,16)
            
            Text("3d")
                .foregroundColor(.gray)
                .font(.system(size: 14))
                .padding(.horizontal,16)
                .padding(.top, -8)
            
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
