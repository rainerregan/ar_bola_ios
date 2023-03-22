//
//  ARCameraView.swift
//  ARTesting
//
//  Created by Rainer Regan on 22/03/23.
//

import SwiftUI
import RealityKit

struct ARCameraView: View {
    var body: some View {
        ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let arView = ARView(frame: .zero)
        
        let fieldAnchor = try! Experience.loadField()
        
        arView.scene.anchors.append(fieldAnchor)
        
        return arView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        //not used
    }
}

struct ARCameraView_Previews: PreviewProvider {
    static var previews: some View {
        ARCameraView()
    }
}
