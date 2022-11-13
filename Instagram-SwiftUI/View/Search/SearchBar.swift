//
//  SearchBar.swift
//  Instagram-SwiftUI
//
//  Created by Aditya Ramadhan on 13/11/22.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text : String
    @State var showCancelButton = false
    @Binding var isEditing : Bool
    
    var body: some View {
        HStack {
            TextField("Search ", text: $text)
                .padding(8)
                .padding(.horizontal,24)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay (
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                    }
                )
            if showCancelButton {
                Button(action: {
                    hideKeyboard()
                    text = ""
                    withAnimation {
                        self.showCancelButton = false
                        self.isEditing = false
                    }
                    
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.black)
                })
                .transition(.move(edge: .trailing))
            }
        }
        .onTapGesture {
            withAnimation {
                showCancelButton = true
                isEditing = true
            }
        }
        .padding(14)
    }
}


