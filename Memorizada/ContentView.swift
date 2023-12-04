//
//  ContentView.swift
//  Memorizada
//
//  Created by Samir Pandey on 11/7/23.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["❤️", "💩", "😈", "👻","🤡", "👀", "👑", "🌝","🔥"]
    @State var cardCount: Int = 4
    
    var body: some View {
        VStack {
            ScrollView {
                cards
            }
            Spacer()
            cardCountAdjusters
        }
        .padding()
    }
    
    var cardCountAdjusters: some View {
        HStack {
            cardRemover
            Spacer()
            cardAdder
        }
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
            ForEach(0..<cardCount, id: \.self) { index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
            .foregroundColor(.orange)
        }
    }
    
    func cardCountAdjuster(by offset: Int, symbol: String, name: String) -> some View {
        Button(action: {
           cardCount += offset
        }, label: {
            Image(systemName: symbol)
            Text(name)
        })
        .disabled(cardCount + offset < 1 || cardCount + offset > emojis.count)
            
    }
    var cardRemover: some View {
        cardCountAdjuster(by: -1, symbol: "trash.square.fill", name: "Remove")
        .foregroundColor(.red)
    }
    
    var cardAdder: some View {
        cardCountAdjuster(by: +1, symbol: "plus.app.fill", name: "Add Card")
        .foregroundColor(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
