//
//  RoadMap.swift
//  D.S. Cookbook
//
//  Created by FanRende on 2021/11/6.
//

import SwiftUI

struct RoadMap: View {
    @State var showCoord: Bool = true
    @State var showName: Bool = true

    @State private var steadyStateZoomScale: Double = 2
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
        DragGesture()
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
                    else if steadyStateZoomScale > 10 {
                        steadyStateZoomScale = 10
                    }
                }
            }
    }

    var body: some View {
        let zoomBinding = Binding<CGFloat>(
            get: { self.zoomScale },
            set: { self.steadyStateZoomScale = $0 / self.gestureZoomScale }
        )

        ZStack {
            Image("fullmap")
                .resizable()
                .overlay(MapOverlay(showCoord: $showCoord, showName: $showName, outerZoomScale: zoomBinding))
                .rotationEffect(Angle(degrees: 90))
                .scaledToFit()
                .offset(x: dragOffset.width, y: dragOffset.height)
                .scaleEffect(zoomScale)
            
            Color.black.opacity(0.01).ignoresSafeArea()
                .gesture(dragGesture())
                .gesture(scaleGesture())
            
            HStack {
                Toggle("顯示格線", isOn: $showCoord)
                
                Toggle("顯示據點名稱", isOn: $showName)
            }
            .offset(x: 0, y: 300)
            .padding()
        }
    }
}

struct RoadMap_Previews: PreviewProvider {
    static var previews: some View {
        RoadMap()
    }
}
