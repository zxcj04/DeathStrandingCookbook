//
//  MapOverlay.swift
//  D.S. Cookbook
//
//  Created by FanRende on 2021/11/6.
//

import SwiftUI

struct MapOverlay: View {
    @Binding var showCoord: Bool
    @Binding var showRoad: Bool
    @Binding var showName: Bool
    @Binding var outerZoomScale: CGFloat

    var body: some View {
        let coord = showCoord ? Coord(): nil
        let road = showRoad ? Road(): nil

        ZStack {
            coord
                .opacity(0.5)

            Group {
                road
    //                .rotation3DEffect(.degrees(180), axis: (x: 1, y: 0, z: 0))

                ForEach(MapLocation.locations) { location in
                    MapAnnotaion(name: showName ? location.name: "", scale: outerZoomScale, knot: location.knot)
                        .position(x: location.x, y: -location.y)
                }
            }
            .offset(x: 187, y: 102)
        }
    }
}

struct Road: View {
    private let r: Double = 2
    
    private func lakeToSplit() -> some View {
        ZStack {
            Path { path in
                path.move(to: CGPoint(x: 35, y: -40))
                path.addLine(to: CGPoint(x: 32, y: -35))
                path.addLine(to: CGPoint(x: 25, y: -27.5))
                path.addLine(to: CGPoint(x: 17.5, y: -27.5))
                path.addLine(to: CGPoint(x: 13, y: -30))
                path.addLine(to: CGPoint(x: 7.5, y: -24))
                path.addQuadCurve(to: CGPoint(x: 2, y: -21), control: CGPoint(x: 7, y: -21))
            }.stroke(.orange, lineWidth: 0.5)
            
            Path { path in
                path.addEllipse(in: CGRect(x: 32 - r/2, y: -35 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: 25 - r/2, y: -27.5 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: 17.5 - r/2, y: -27.5 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: 13 - r/2, y: -30 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: 7.5 - r/2, y: -24 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: 2 - r/2, y: -21 - r/2, width: r, height: r))
            }.fill(.green)
        }
    }
    
    private func splitToSouth() -> some View {
        ZStack {
            Path { path in
                path.move(to: CGPoint(x: 2, y: -21))
                path.addQuadCurve(to: CGPoint(x: -2, y: -14), control: CGPoint(x: -1, y: -22))
                path.addLine(to: CGPoint(x: -2.5, y: -11))
                path.addLine(to: CGPoint(x: -7.5, y: -6.5))
                path.addLine(to: CGPoint(x: -12, y: -1))
                path.addLine(to: CGPoint(x: -12.5, y: 3))
                path.addLine(to: CGPoint(x: -13, y: 10))
                path.addQuadCurve(to: CGPoint(x: -18, y: 14), control: CGPoint(x: -19, y: 10))
                path.addLine(to: CGPoint(x: -18, y: 18))
                path.addLine(to: CGPoint(x: -15.5, y: 24.5))
                path.addQuadCurve(to: CGPoint(x: -13.5, y: 27.5), control: CGPoint(x: -10, y: 24))
                path.addQuadCurve(to: CGPoint(x: -13.5, y: 32), control: CGPoint(x: -15, y: 30))
                path.addQuadCurve(to: CGPoint(x: -9, y: 34), control: CGPoint(x: -12.5, y: 37))
                path.addLine(to: CGPoint(x: -6, y: 37))
                path.addLine(to: CGPoint(x: -2, y: 41))
                path.addLine(to: CGPoint(x: 2, y: 46))
            }.stroke(.orange, lineWidth: 0.5)
            
            Path { path in
                path.addEllipse(in: CGRect(x: -2 - r/2, y: -14 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -2.5 - r/2, y: -11 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -7.5 - r/2, y: -6.5 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -12.5 - r/2, y: 3 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -13 - r/2, y: 10 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -18 - r/2, y: 14 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -18 - r/2, y: 18 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -15.5 - r/2, y: 24.5 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -13.5 - r/2, y: 32 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -9 - r/2, y: 34 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -6 - r/2, y: 37 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -2 - r/2, y: 41 - r/2, width: r, height: r))
            }.fill(.green)
        }
    }
    
    private func splitToWestPart1() -> some View {
        ZStack {
            Path { path in
                path.move(to: CGPoint(x: 2, y: -21))
                path.addLine(to: CGPoint(x: -7.5, y: -23))
                path.addLine(to: CGPoint(x: -15, y: -25))
                path.addLine(to: CGPoint(x: -25, y: -32))
                path.addLine(to: CGPoint(x: -25, y: -36))
                path.addQuadCurve(to: CGPoint(x: -28, y: -43), control: CGPoint(x: -24, y: -40))
                path.addQuadCurve(to: CGPoint(x: -31.5, y: -43), control: CGPoint(x: -30, y: -47))
                path.addQuadCurve(to: CGPoint(x: -36, y: -45), control: CGPoint(x: -32, y: -41))
                path.addLine(to: CGPoint(x: -43, y: -49))
                path.addQuadCurve(to: CGPoint(x: -50, y: -50), control: CGPoint(x: -52, y: -46))
                path.addQuadCurve(to: CGPoint(x: -54, y: -54), control: CGPoint(x: -49, y: -56))
                path.addLine(to: CGPoint(x: -61, y: -50))
                path.addQuadCurve(to: CGPoint(x: -71, y: -47), control: CGPoint(x: -64, y: -41))
                path.addQuadCurve(to: CGPoint(x: -78, y: -49), control: CGPoint(x: -76, y: -51))
                path.addQuadCurve(to: CGPoint(x: -83, y: -42), control: CGPoint(x: -78, y: -40))
                path.addLine(to: CGPoint(x: -89, y: -44))
            }.stroke(.orange, lineWidth: 0.5)

            Path { path in
                path.addEllipse(in: CGRect(x: -7.5 - r/2, y: -23 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -15 - r/2, y: -25 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -25 - r/2, y: -32 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -25 - r/2, y: -36 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -28 - r/2, y: -43 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -36 - r/2, y: -45 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -43 - r/2, y: -49 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -54 - r/2, y: -54 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -61 - r/2, y: -50 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -71 - r/2, y: -47 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -78 - r/2, y: -49 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -83 - r/2, y: -42 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -95 - r/2, y: -41 - r/2, width: r, height: r))
            }.fill(.green)
        }
    }
    
    private func splitToWestPart2() -> some View {
        ZStack {
            Path { path in
                path.move(to: CGPoint(x: -89, y: -44))
                path.addLine(to: CGPoint(x: -95, y: -41))
                path.addLine(to: CGPoint(x: -96, y: -34.5))
                path.addLine(to: CGPoint(x: -92, y: -31))
                path.addLine(to: CGPoint(x: -92.5, y: -26.5))
                path.addLine(to: CGPoint(x: -93, y: -20))
                path.addLine(to: CGPoint(x: -89, y: -13))
                path.addLine(to: CGPoint(x: -89, y: -7))
                path.addQuadCurve(to: CGPoint(x: -88, y: 3), control: CGPoint(x: -93, y: 0))
                path.addQuadCurve(to: CGPoint(x: -82, y: 1), control: CGPoint(x: -86, y: 1))
                path.addArc(center: CGPoint(x: -80, y: 2), radius: 1, startAngle: .degrees(180), endAngle: .degrees(270), clockwise: true)
                path.addArc(center: CGPoint(x: -79.5, y: 0.5), radius: 0.5, startAngle: .degrees(90), endAngle: .degrees(0), clockwise: false)
                path.addArc(center: CGPoint(x: -78.5, y: 0), radius: 0.5, startAngle: .degrees(180), endAngle: .degrees(0), clockwise: true)
                path.addArc(center: CGPoint(x: -76.5, y: 0), radius: 1.5, startAngle: .degrees(180), endAngle: .degrees(20), clockwise: false)
                path.addQuadCurve(to: CGPoint(x: -73.5, y: 4), control: CGPoint(x: -75, y: 4))
            }.stroke(.orange, lineWidth: 0.5)

            Path { path in
                path.addEllipse(in: CGRect(x: -95 - r/2, y: -41 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -96 - r/2, y: -34.5 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -92 - r/2, y: -31 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -92.5 - r/2, y: -26.5 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -93 - r/2, y: -20 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -89 - r/2, y: -13 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -89 - r/2, y: -7 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -88 - r/2, y: 3 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -82 - r/2, y: 1 - r/2, width: r, height: r))
                path.addEllipse(in: CGRect(x: -73.5 - r/2, y: 4 - r/2, width: r, height: r))
            }.fill(.green)
        }
    }

    var body: some View {
        ZStack {
            splitToSouth()
            
            splitToWestPart1()
            splitToWestPart2()

            lakeToSplit()
        }.opacity(0.8)
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
                .foregroundColor(.white)
                .offset(y: 15)
                .scaleEffect(1 / scale)
//                .animation(.easeInOut, value: scale)
        }
    }
}

struct Coord: View {
    var body: some View {
        let r: Double = 3

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
                    Path { path in
                        path.addEllipse(in: CGRect(x: CGFloat(187 + i * 50) - r/2, y: CGFloat(102 + j * 50) - r/2, width: r, height: r))
                    }.fill(.purple)
                }
            }
            
            Path { path in
                path.move(to: CGPoint(x: 0, y: 102))
                path.addLine(to: CGPoint(x: 370, y: 102))

                path.move(to: CGPoint(x: 187, y: 0))
                path.addLine(to: CGPoint(x: 187, y: 200))
            }.stroke(.red, lineWidth: 0.5)
            
            Path { path in
                path.addEllipse(in: CGRect(x: 187 - r/2, y: 102 - r/2, width: r, height: r))
            }.fill(.red)
        }
    }
}

struct MapOverlay_Previews: PreviewProvider {
    @State static var scale: CGFloat = 1
    @State static var showCoord: Bool = true
    @State static var showRoad: Bool = true
    @State static var showName: Bool = true

    static var previews: some View {
//        MapOverlay(showCoord: $showCoord, showRoad: $showRoad, showName: $showName, outerZoomScale: $scale)
        ContentView()
            .preferredColorScheme(.dark)
    }
}
