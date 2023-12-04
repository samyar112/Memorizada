//
//  CardView.swift
//  Memorizada
//
//  Created by Samir Pandey on 12/3/23.
//

import Foundation
import SwiftUI

struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👀").font(.largeTitle)
            } else {
                base.fill()
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
