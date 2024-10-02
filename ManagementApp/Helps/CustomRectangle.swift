//
//  CustomRectangle.swift
//  ManagementApp
//
//  Created by Luciano Nicolini on 27/09/2024.
//

import SwiftUI

struct CustomRectangle : Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        
        let c1 = CGPoint(x: rect.midX+50, y: rect.maxY+20)
        let c2 = CGPoint(x: rect.midX-50, y: rect.maxY+20)
        path.addCurve(to: CGPoint(x: rect.minX, y: rect.maxY), control1: c1, control2: c2)
       
        path.closeSubpath()
        return path
    }
}
