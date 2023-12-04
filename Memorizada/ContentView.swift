//
//  ContentView.swift
//  Memorizada
//
//  Created by Samir Pandey on 11/7/23.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["❤️", "💩", "😈", "👻"]
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
