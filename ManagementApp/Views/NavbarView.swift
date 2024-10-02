//
//  NavbarView.swift
//  ManagementApp
//
//  Created by Luciano Nicolini on 27/09/2024.
//

import SwiftUI

struct NavbarView: View {
    var body: some View {
        VStack {
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "line.3.horizontal")
                        .font(.system(size: 25, weight: .bold))
                })
                .padding(.horizontal,20)
                .padding(.vertical,10)
                
                Spacer()
                Text("Inventary Management")
                    .font(.system(size: 20, weight: .bold))
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "plus")
                        .font(.system(size: 25,weight: .bold))
                })
                .padding(.horizontal,20)
                .padding(.vertical,10)
            }
            .foregroundStyle(.white)
        }
    }
}

