//
//  TopBar.swift
//  Instagram-SwiftUI
//
//  Created by Aditya Ramadhan on 13/11/22.
//

import SwiftUI

struct TopBar: View {
    var body: some View {
        HStack{
            Button(action: {}, label: {
                HStack (spacing: 2) {
                    Image("hehe")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: 150, maxHeight: 150)
                        .clipped()
                    Image(systemName: "chevron.down")
                        .foregroundColor(.black)
                        .font(.system(size: 14))
                        .padding(.leading, -5)
                }
            })
            
            Spacer()
            HStack (spacing : 30){
                Button(action: {
                }, label: {
                    Image(systemName: "plus.square")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .clipped()
                        .foregroundColor(.black)
                })
                Button(action: {
                    
                }, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .clipped()
                        .foregroundColor(.black)
                })
                Button(action: {
                    
                }, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .clipped()
                        .foregroundColor(.black)
                })
            }
            .padding(.horizontal, 16)
        }
        .frame(width: UIScreen.main.bounds.width, height: 50)
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar()
    }
}
