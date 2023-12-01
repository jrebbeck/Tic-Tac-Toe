//
//  ContentView.swift
//  Tic Tac Toe
//
//  Created by Justin Rebbeck on 11/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Text("Tic Tac Toe")
                .bold()
            LazyVGrid(columns: Array(repeating: GridItem(.fixed(120), spacing: 15), count: 3), spacing: 15) {
                
                ForEach(0..<9) {
                    index in ZStack {
                        Color.blue
                        Text("X")
                            .frame(width: 120, height: 120, alignment: .center)
                            .cornerRadius(30)
                    }
                }
                
                
            }
        }
        
        .preferredColorScheme(.dark)
        .padding()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
