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
                .opacity(0.5)
            
//            ForEach(0..<20) { i in
//                MapAnnotaion(name: showName ? "首結市": "", scale: outerZoomScale, knot: i > 10)
//                    .offset(x: CGFloat(-200 + i * 20), y: CGFloat(-100 + i * 10))
//            }
            
            ForEach(MapLocation.locations) { location in
                MapAnnotaion(name: showName ? location.name: "", scale: outerZoomScale, knot: location.knot)
                    .offset(x: location.x, y: -location.y)
            }
        }
    }
}

struct MapLocation: Identifiable {
    let name: String
    let x: Double
    let y: Double
    let knot: Bool
    
    let id = UUID()
}

extension MapLocation {
    static let locations: [MapLocation] = [
        MapLocation(name: "主結市", x: 155, y: 22.5, knot: true),
        MapLocation(name: "主結市西邊的中繼站", x: 122.5, y: 35, knot: true),
        MapLocation(name: "主結市西邊的配送中心", x: 101, y: 10, knot: true),
        MapLocation(name: "港結市", x: 57.5, y: -11, knot: true),
        MapLocation(name: "主結市西邊的焚化爐", x: 129, y: 12, knot: false),
        MapLocation(name: "路燈斯迷", x: 117, y: 17.5, knot: false),
        MapLocation(name: "風電廠", x: 70, y: 22, knot: false),
        
        MapLocation(name: "湖結市", x: 35, y: 45, knot: true),
        MapLocation(name: "湖結市南邊的配送中心", x: -10, y: 1, knot: true),
        MapLocation(name: "南結市", x: 2, y: -45, knot: true),
        MapLocation(name: "山結市", x: -72, y: -3, knot: true),
        MapLocation(name: "山結市北邊的中繼站", x: -33, y: 36, knot: true),
        MapLocation(name: "山結市北邊的配送中心", x: -89, y: 46, knot: true),

        MapLocation(name: "湖結市西邊的焚化爐", x: -48, y: 55, knot: false),
        MapLocation(name: "彼得 盎格勒", x: 13, y: 45, knot: false),
        MapLocation(name: "庇護所廢墟", x: 0, y: 40, knot: false),
        MapLocation(name: "匠人", x: -5, y: 27, knot: false),
        MapLocation(name: "工程師", x: 24, y: 23, knot: false),
        MapLocation(name: "長老", x: 11, y: 9, knot: false),
        MapLocation(name: "電影導演", x: 18, y: -12, knot: false),
        MapLocation(name: "收藏家", x: -7, y: -10, knot: false),
        MapLocation(name: "舊貨商", x: 8, y: -19, knot: false),
        MapLocation(name: "角色扮演者", x: -18, y: -30.5, knot: false),
        MapLocation(name: "開若爾藝術家的工作室", x: 23, y: -36, knot: false),
        MapLocation(name: "瑪瑪的實驗室", x: -10, y: -40, knot: false),
        MapLocation(name: "時間雨農場", x: -37, y: -57, knot: false),
        MapLocation(name: "氣象站", x: -38, y: -12, knot: false),
        MapLocation(name: "醫生", x: -79, y: -9, knot: false),
        MapLocation(name: "心人的實驗室", x: -72, y: -18, knot: false),
        MapLocation(name: "機器人學家", x: -57, y: -15, knot: false),
        MapLocation(name: "地質學家", x: -62, y: -34, knot: false),
        MapLocation(name: "古生物學家", x: -75, y: -46, knot: false),
        MapLocation(name: "演化生物學家", x: -91, y: -32, knot: false),
        MapLocation(name: "開若爾轉播器", x: -111, y: -69, knot: false),
        MapLocation(name: "靈修者", x: -48, y: 18, knot: false),
        MapLocation(name: "登山客", x: -66, y: 21, knot: false),
        MapLocation(name: "攝影師", x: -101, y: 6, knot: false),
        MapLocation(name: "小說家的兒子", x: -109, y: 26, knot: false),
        
        MapLocation(name: "緣結市西邊的配送中心", x: -158, y: 23, knot: true),
        MapLocation(name: "緣結市", x: -170, y: 0, knot: true),
    ]
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
//                .animation(.easeInOut, value: scale)
            
            Text(name)
                .font(.system(size: 9))
                .offset(y: 15)
                .scaleEffect(1 / scale)
//                .animation(.easeInOut, value: scale)
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
