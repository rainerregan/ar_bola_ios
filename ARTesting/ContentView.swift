//
//  ContentView.swift
//  ARTesting
//
//  Created by Nuki Venoza on 20/03/23.
//

import SwiftUI

enum GameplayType{
    case soccer
    case bowling
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack{
                VStack {
                    Text("AR Olympics")
                        .font(.title)
                        .foregroundColor(.black)
                    HStack {
                        NavigationLink(destination: ARCameraView(type: .bowling)) {
                            Text("Bowling")
                                .padding(20)
                                .background(Color.orange)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                        }
                        NavigationLink(destination: ARCameraView(type: .soccer)) {
                            Text("Bola")
                                .padding(20)
                                .background(Color.orange)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                        }
                    }
                    
                }
            }
            .background(
                Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)

            )
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
