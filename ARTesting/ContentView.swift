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
            VStack {
                Text("AR Bola")
                    .font(.title)
                NavigationLink(destination: ARCameraView()) {
                    Text("Buka AR")
                        .frame(width: 200, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
