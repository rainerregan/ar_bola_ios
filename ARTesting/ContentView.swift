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
                    
                    Image("appTitle")
                        .resizable()
                        .frame(width: 362, height: 204)
                                        
                    VStack{
                        NavigationLink(destination: ARCameraView(type: .bowling)) {
                            Text("Bowling")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.0, green: 0.00784313725490196, blue: 0.16862745098039217, opacity: 100.0))
                                .frame(maxWidth: .infinity, maxHeight: 24)
                                .padding(20)
                                .background(Color.white)
                                .cornerRadius(30)
                                .shadow(radius: 10)
                        }
                        .padding(.bottom, 20)
                        
                        NavigationLink(destination: ARCameraView(type: .soccer)) {
                            Text("Soccer")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.0, green: 0.00784313725490196, blue: 0.16862745098039217, opacity: 100.0))
                                .frame(maxWidth: .infinity, maxHeight: 24)
                                .padding(20)
                                .background(Color.white)
                                .foregroundColor(Color.white)
                                .cornerRadius(30)
                                .shadow(radius: 10)
                        }
                    }
                    .padding(.top, -50)
                    .padding(20)
                    .padding(.bottom, 100)
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
