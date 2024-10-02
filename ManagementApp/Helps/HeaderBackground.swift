//
//  HeaderBackground.swift
//  ManagementApp
//
//  Created by Luciano Nicolini on 27/09/2024.
//

import SwiftUI

//1
struct HeaderBackground: View {
    var body: some View {
        Rectangle()
            .fill(LinearGradient(colors: [Color(red: 82/255, green: 133/255, blue: 246/255),Color(red: 40/255, green: 92/255, blue: 222/255), Color(red: 40/255, green: 92/255, blue: 222/255)], startPoint: .bottom, endPoint: .top))
            .frame(maxWidth: .infinity)
            .frame(height: 150)
            .mask {
                CustomRectangle()
            }
            .edgesIgnoringSafeArea(.top)
    }
}
