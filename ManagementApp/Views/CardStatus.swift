//
//  CardStatus.swift
//  ManagementApp
//
//  Created by Luciano Nicolini on 27/09/2024.
//

import SwiftUI

//2
struct CardStatus: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 60)
        
            HStack {
                VStack(spacing: 10) {
                    Text("421")
                        .font(.system(size: 25, weight: .bold))
                    Text("overdue")
                        .font(.system(size: 15))
                        .foregroundStyle(Color.gray)
                }
                Spacer()
                VStack(spacing: 10) {
                    Text("81")
                        .font(.system(size: 25, weight: .bold))
                    Text("To do")
                        .font(.system(size: 15))
                        .foregroundStyle(Color.gray)
                }
                Spacer()
                VStack(spacing: 10) {
                    Text("72")
                        .font(.system(size: 25, weight: .bold))
                    Text("open")
                        .font(.system(size: 15))
                        .foregroundStyle(Color.gray)
                }
                Spacer()
                VStack(spacing: 10) {
                    Text("51")
                        .font(.system(size: 25, weight: .bold))
                    Text("due today")
                        .font(.system(size: 15))
                        .foregroundStyle(Color.gray)
                }
            }
            .padding(.horizontal,30)
            .padding(.vertical,20)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 20.0))
            .shadow(color: Color.gray.opacity(0.3), radius: 15.0, x: 0, y: 0)
            .padding(.horizontal,20)
            
            HStack {
                Text("Due today")
                    Spacer()
                HStack {
                    Text("Sort By")
                    Button(action: {}, label: {
                        Image(systemName: "slider.vertical.3")
                    })
                }
            }
            .padding(.top,20)
            .foregroundStyle(Color.black.opacity(0.6))
            .padding(.horizontal,20)
            
           Cards()
        }
    }
}

#Preview {
    CardStatus()
}

struct Cards: View {
    @State var inventories: [InventaryModel] = []
    var body: some View {
        List(inventories) { inventory in
            VStack(alignment: .leading, spacing: 13) {
                HStack {
                    Image(systemName: inventory.icon)
                    Text("Assets")
                        .font(.system(size: 15, weight: .light))
                    Spacer()
                    Circle()
                        .fill(inventory.statusColor)
                        .frame(width: 10,height: 10)
                    Text(inventory.title)
                        .font(.system(size: 15, weight: .light))
                }
                .foregroundStyle(Color.gray)
                Text(inventory.title)
                    .font(.system(size: 16, weight: .bold))
                HStack {
                    Text("For").foregroundStyle(Color.gray)
                    Text(inventory.owner)
                    Image(systemName: "chevron.down")
                        .font(.system(size: 13, weight: .bold))
                    Spacer()
                    Text(inventory.time)
                }
            }
            .padding(.horizontal,20)
            .frame(maxWidth: .infinity)
            .overlay {
                HStack {
                    Rectangle()
                        .fill(inventory.cardColor)
                        .padding(.vertical, -20)
                        .frame(width: 5)
                    Spacer()
                }
                .frame(maxWidth: .infinity)
            }
            .padding(.vertical,20)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: Color.gray.opacity(0.2), radius: 15.0, x: 0, y: 0)
            .padding(.vertical, 10)
            .padding(.horizontal,0)
            
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .padding(.horizontal,0)
        
        .onAppear {
            inventories = InventaryModel.getInventory()
        }
    }
}
