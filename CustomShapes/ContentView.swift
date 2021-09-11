//
//  ContentView.swift
//  CustomShapes
//
//  Created by Ramill Ibragimov on 11.09.2021.
//

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        }
    }
}

struct Diamond: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let hotizontalOffset: CGFloat = rect.width * 0.2
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX - hotizontalOffset, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX + hotizontalOffset, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        }
    }
}

struct Trapezoid: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let hotizontalOffset: CGFloat = rect.width * 0.2
            path.move(to: CGPoint(x: rect.minX + hotizontalOffset, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX - hotizontalOffset, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX + hotizontalOffset, y: rect.minY))
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Triangle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color.pink, Color.purple
                ]), startPoint: .leading, endPoint: .trailing))
                .frame(width: 200, height: 200)
                .shadow(radius: 10)
                .offset(y: 100)
            
            Diamond()
                .fill(LinearGradient(gradient: Gradient(colors: [Color.pink, Color.purple
                ]), startPoint: .leading, endPoint: .trailing))
                .frame(width: 300, height: 300)
                .shadow(radius: 10)
                .zIndex(1.0)
            
            Trapezoid()
                .fill(LinearGradient(gradient: Gradient(colors: [Color.pink, Color.purple
                ]), startPoint: .leading, endPoint: .trailing))
                .frame(width: 300, height: 100)
                .shadow(radius: 10)
                .offset(y: -50)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
