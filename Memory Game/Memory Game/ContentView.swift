//
//  ContentView.swift
//  Memory Game
//
//  Created by Bruno Gois on 29/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView()
            CardView()
            CardView()
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}


struct CardView: View {
    var isFaceUp: Bool = true
    
    var body: some View {
        if isFaceUp {
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill()
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3)
                Text("👻")
            }
        } else {
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill()
            }
        }
        
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
