//
//  ContentView.swift
//  ManagementApp
//
//  Created by Luciano Nicolini on 27/09/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                 HeaderBackground()
                Spacer()
            }
            NavbarView()
            CardStatus()
            
        }
    }
}

#Preview {
    ContentView()
}













