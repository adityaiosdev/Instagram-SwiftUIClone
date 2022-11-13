//
//  ContentView.swift
//  Instagram-SwiftUI
//
//  Created by Aditya Ramadhan on 13/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MainTabView()
            .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
