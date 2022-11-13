//
//  SearchView.swift
//  Instagram-SwiftUI
//
//  Created by Aditya Ramadhan on 13/11/22.
//

import SwiftUI

struct SearchView: View {
    
    @State var text = ""
    @State var inSearchMode = false
    var body: some View {
        ScrollView{
            SearchBar(text: $text, isEditing: $inSearchMode)
            ZStack {
                if inSearchMode {
                    UserListView()
                }
                else {
                    PostGridView()
                        .padding(.top,-5)
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
