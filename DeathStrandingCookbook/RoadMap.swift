//
//  RoadMap.swift
//  D.S. Cookbook
//
//  Created by FanRende on 2021/11/6.
//

import SwiftUI

struct RoadMap: View {
    @State var showCoord: Bool = false
    @State var showRoad: Bool = true
    @State var showName: Bool = true

    @State private var steadyStateZoomScale: Double = 4
    @GestureState private var gestureZoomScale: Double = 1
    
    @State private var steadyStateDragOffset: CGSize = CGSize.zero
    @GestureState private var gestureDragOffset: CGSize = CGSize.zero
    
    var zoomScale: CGFloat {
      steadyStateZoomScale * gestureZoomScale
    }
    
    var dragOffset: CGSize {
        sizeAdd(sizeA: steadyStateDragOffset, sizeB: gestureDragOffset)
    }
    
    private func sizeAdd(sizeA: CGSize, sizeB: CGSize) -> CGSize {
        CGSize(width: sizeA.width + sizeB.width / zoomScale, height: sizeA.height + sizeB.height / zoomScale)
    }
    
    private func dragGesture() -> some Gesture {
        DragGesture(minimumDistance: 0.05)
            .updating($gestureDragOffset, body: { currentState, gestureState, transaction in
                gestureState = currentState.translation
            })
            .onEnded { gestureDragAtEnd in
                steadyStateDragOffset = sizeAdd(sizeA: steadyStateDragOffset, sizeB: gestureDragAtEnd.translation)
            }
    }
    
    private func scaleGesture() -> some Gesture {
        MagnificationGesture()
            .updating($gestureZoomScale) { currentState, gestureState, transaction in
                gestureState = currentState
            }
            .onEnded { gestureScaleAtEnd in
                steadyStateZoomScale *= gestureScaleAtEnd

                withAnimation(.easeInOut) {
                    if steadyStateZoomScale < 2 {
                        steadyStateZoomScale = 2
                    }
                }
            }
    }
    
    private func doubleTapGesture() -> some Gesture {
        TapGesture(count: 2)
            .onEnded({ _ in
                withAnimation(.easeInOut) {
                    steadyStateZoomScale = 4
                    steadyStateDragOffset = CGSize.zero
                }
            })
    }

    var body: some View {
        let frameScale: Double = 14.625

        let zoomBinding = Binding<CGFloat>(
            get: { self.zoomScale },
            set: { self.steadyStateZoomScale = $0 / self.gestureZoomScale }
        )

        ZStack {
            Color.blue.opacity(0.25).ignoresSafeArea()

            Image("fullmap")
                .resizable()
                .overlay(MapOverlay(showCoord: $showCoord, showRoad: $showRoad, showName: $showName, outerZoomScale: zoomBinding))
                .rotationEffect(Angle(degrees: 90))
                .frame(width: 5486 / frameScale, height: 3000 / frameScale)
                .offset(x: dragOffset.width, y: dragOffset.height)
                .scaleEffect(zoomScale)
            
            HStack {
                Spacer()
                
                Button {
                    showName.toggle()
                } label: {
                    Image(systemName: showName ? "tag.fill": "tag.slash.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .foregroundColor(.green)
                }
                
                Button {
                    showRoad.toggle()
                } label: {
                    Image(systemName: showRoad ? "eye.fill": "eye.slash.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .foregroundColor(.green)
                }
                
                Button {
                    showCoord.toggle()
                } label: {
                    Image(systemName: showCoord ? "rectangle.split.2x1.fill": "rectangle.split.2x1.slash.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .foregroundColor(.green)
                }
                
                Spacer()
            }
            .offset(x: 0, y: 300)
            .padding()
        }
        .gesture(dragGesture())
        .gesture(scaleGesture())
        .gesture(doubleTapGesture())
    }
}

struct RoadMap_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
