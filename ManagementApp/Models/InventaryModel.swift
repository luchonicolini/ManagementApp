//
//  InventaryModel.swift
//  ManagementApp
//
//  Created by Luciano Nicolini on 27/09/2024.
//

import Foundation
import SwiftUI

struct InventaryModel: Identifiable {
    let id = UUID()
    let icon: String
    let statusColor: Color
    let title: String
    let status: String
    let owner: String
    let time: String
    let cardColor: Color
    
    static func getInventory() -> [Self] {
        return [
            InventaryModel(icon: "square.stack.3d.up.fill", statusColor: .cyan, title: "Request for new Apple Macbook Pro", status: "Open", owner: "Luciano Nicolini", time: "2m", cardColor: .cyan),
            InventaryModel(icon: "desktopcomputer", statusColor: .green, title: "Dell Monitor Replacement", status: "In Progress", owner: "Julia Santos", time: "5m", cardColor: .green),
            InventaryModel(icon: "printer.fill", statusColor: .red, title: "HP Printer Paper Jam", status: "Urgent", owner: "Martín López", time: "10m", cardColor: .red),
            InventaryModel(icon: "iphone.homebutton", statusColor: .blue, title: "iPhone 14 Software Update", status: "Completed", owner: "Ana García", time: "1h", cardColor: .blue),
            InventaryModel(icon: "wrench.fill", statusColor: .orange, title: "Office Chair Repair", status: "Pending", owner: "Carlos Mejía", time: "30m", cardColor: .orange),
            InventaryModel(icon: "server.rack", statusColor: .purple, title: "Server Maintenance", status: "Scheduled", owner: "Daniela Pérez", time: "2h", cardColor: .purple)
        ]
    }
}

