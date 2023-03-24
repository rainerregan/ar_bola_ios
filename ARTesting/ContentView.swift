//
//  ContentView.swift
//  ARTesting
//
//  Created by Nuki Venoza on 20/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack{
                VStack {
                    Text("AR Bola")
                        .font(.title)
                        .foregroundColor(.black)
                    NavigationLink(destination: ARCameraView()) {
                        Text("Buka AR")
                            .frame(width: 200, height: 50)
                            .background(Color.orange)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
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
