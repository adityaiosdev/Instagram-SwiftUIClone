//
//  Extensions.swift
//  Instagram-SwiftUI
//
//  Created by Aditya Ramadhan on 13/11/22.
//


import SwiftUI

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(
            #selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
