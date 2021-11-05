//
//  RoadMap.swift
//  D.S. Cookbook
//
//  Created by FanRende on 2021/11/6.
//

import SwiftUI

struct RoadMap: View {
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
        ZStack {
            Image("fullmap")
                .resizable()
                .overlay(Rectangle().fill(.white).scaleEffect(0.25))
                .rotationEffect(Angle(degrees: 90))
                .scaledToFit()
                .offset(x: dragOffset.width, y: dragOffset.height)
                .scaleEffect(zoomScale)
            
            Color.black.opacity(0.01).ignoresSafeArea()
                .gesture(dragGesture())
                .gesture(scaleGesture())
        }
    }
}

struct RoadMap_Previews: PreviewProvider {
    static var previews: some View {
        RoadMap()
    }
}