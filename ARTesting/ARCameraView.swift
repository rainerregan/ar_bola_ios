//
//  ARCameraView.swift
//  ARTesting
//
//  Created by Rainer Regan on 22/03/23.
//

import SwiftUI
import RealityKit

struct ARCameraView: View {
    let type: GameplayType;
    
    var body: some View {
        ARViewContainer(type: type).edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    let type: GameplayType;
    
    func makeUIView(context: Context) -> some UIView {
        let arView: ARView
        
        switch type{
        case .soccer:
            arView = SoccerARView(frame: .zero)
        case .bowling:
            arView = BowlingARView(frame: .zero)
        default:
            print("OK")
        }
        
        return arView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        //not used
    }
}

struct ARCameraView_Previews: PreviewProvider {
    static var previews: some View {
        ARCameraView(type: .bowling)
    }
}

class SoccerARView: ARView{
    
    var fieldScene: Experience.Field?
    var ballModelEntity: ModelEntity?
    
    required init(frame frameRect: CGRect) {
        super.init(frame: frameRect)
        
        guard let fieldScene = try? Experience.loadField() else { return }
        self.scene.anchors.append(fieldScene)
        
        // Ketika di cast ke ModelEntity dia jadi nil
        var ball = fieldScene.soccerBall

        let gesture = UIPanGestureRecognizer(target: self, action: #selector(onPan))
        self.addGestureRecognizer(gesture)
    }
    
    @objc func onPan(_ gesture: UIPanGestureRecognizer){
        let translation = gesture.translation(in: self.inputView);
        
        
        switch gesture.state {
        case .ended:
            let velocity = gesture.velocity(in: self.inputView)
//            print(velocity.x)
            
            let forceMultiplier = simd_float3(repeating: 10)
            
            print(ballModelEntity)
            ballModelEntity?.addForce(simd_float3(
                x: 100,
                y: 100,
                z: 100) * forceMultiplier, relativeTo: nil)
        default:
            break;
            
        }
    }
    
    @MainActor required dynamic init?(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class BowlingARView: ARView {
    var bowlingScene: Experience.Bowling?;
    
    required init(frame frameRect: CGRect) {
        super.init(frame: frameRect)
        
        guard let bowlingScene = try? Experience.loadBowling() else { return }
        self.scene.anchors.append(bowlingScene)
        
        // Ketika di cast ke ModelEntity dia jadi nil
//        var ball = fieldScene

        let gesture = UIPanGestureRecognizer(target: self, action: #selector(onPan))
        self.addGestureRecognizer(gesture)
    }
    
    @MainActor required dynamic init?(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func onPan(_ gesture: UIPanGestureRecognizer){
        let translation = gesture.translation(in: self.inputView);
        
        
        switch gesture.state {
        case .ended:
            let velocity = gesture.velocity(in: self.inputView)
//            print(velocity.x)
            
//            let forceMultiplier = simd_float3(repeating: 10)
            
//            print(ballModelEntity)
//            ballModelEntity?.addForce(simd_float3(
//                x: 100,
//                y: 100,
//                z: 100) * forceMultiplier, relativeTo: nil)
        default:
            break;
            
        }
    }
    
    
}
