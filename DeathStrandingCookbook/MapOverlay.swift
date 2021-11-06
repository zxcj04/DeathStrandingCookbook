//
//  MapOverlay.swift
//  D.S. Cookbook
//
//  Created by FanRende on 2021/11/6.
//

import SwiftUI

struct MapOverlay: View {
    @Binding var showCoord: Bool
    @Binding var showName: Bool
    @Binding var outerZoomScale: CGFloat

    var body: some View {
        let coord = showCoord ? Coord(): nil

        ZStack {
            coord
            
            ForEach(0..<20) { i in
                MapAnnotaion(name: showName ? "首結市": "", scale: outerZoomScale, knot: i > 10)
                    .offset(x: CGFloat(-200 + i * 20), y: CGFloat(-100 + i * 10))
            }
        }
    }
}

struct MapAnnotaion: View {
    var name: String
    var scale: CGFloat
    var knot: Bool

    var body: some View {
        ZStack {
            Image(systemName: knot ? "house.fill": "bed.double.fill")
                .resizable()
                .foregroundColor(.blue)
                .frame(width: 15, height: 15)
                .scaleEffect(1 / scale)
                .animation(.easeInOut, value: scale)
            
            Text(name)
                .font(.system(size: 9))
                .offset(y: 15)
                .scaleEffect(1 / scale)
                .animation(.easeInOut, value: scale)
        }
    }
}

struct Coord: View {
    var body: some View {
        ZStack {
            Path { path in
                for i in 0..<21 {
                    path.move(to: CGPoint(x: 0, y: CGFloat(i * 10 + 2)))
                    path.addLine(to: CGPoint(x: 370, y: CGFloat(i * 10 + 2)))
                }

                for i in 0..<37 {
                    path.move(to: CGPoint(x: CGFloat(i * 10 + 7), y: 0))
                    path.addLine(to: CGPoint(x: CGFloat(i * 10 + 7), y: 200))
                }
            }.stroke(.gray, lineWidth: 0.5)
            
            ForEach(-3..<4) { i in
                ForEach(-2..<3) { j in
                    Circle()
                        .fill(.green)
                        .frame(width: 3, height: 3)
                        .offset(x: -1.5 + CGFloat(i * 50 + 1), y: -1.5 + CGFloat(j * 50 + 1))
                }
            }
            
            Path { path in
                path.move(to: CGPoint(x: 0, y: 102))
                path.addLine(to: CGPoint(x: 370, y: 102))

                path.move(to: CGPoint(x: 187, y: 0))
                path.addLine(to: CGPoint(x: 187, y: 200))
            }.stroke(.red, lineWidth: 0.5)
            
            Circle()
                .fill(.red)
                .frame(width: 3, height: 3)
                .offset(x: -1.5 + 1, y: -1.5 + 1)
        }
    }
}

struct MapOverlay_Previews: PreviewProvider {
    @State static var scale: CGFloat = 1
    @State static var showCoord: Bool = true
    @State static var showName: Bool = true

    static var previews: some View {
        MapOverlay(showCoord: $showCoord, showName: $showName, outerZoomScale: $scale)
    }
}
