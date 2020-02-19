//
//  FlashCard.swift
//  eb_sui_4_abs
//
//  Created by yao on 2/17/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct FlashCard: View {
    let word: String?
    
    var removal: (()->Void)? = nil
    var drag : some Gesture {
        DragGesture().onChanged{
            self.offset=$0.translation
        }.onEnded{
            let w = $0.translation.width
            let h = $0.translation.height
            let d = sqrt(w*w + h*h)
            if d>100 {
                // remove card
                self.removal?()
            } else {
                self.offset = .zero
            }
            
        }
    }
    
    @State private var offset: CGSize = .zero
    
    
    var body: some View {
        
        VStack {
            Text(self.word ?? "No more")
                .modifier(CardStyle())
                .offset(self.offset)
                .gesture(self.drag)
        }
        
    }
}

struct CardStyle: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .padding()
            .frame(maxWidth: 300, maxHeight:200)
            .font(.largeTitle)
            .foregroundColor(Color.black)
            .background(Color.blue.opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray.opacity(0.5), lineWidth: 1))
            .shadow(radius: 10)
    }
    
}

struct FlashCard_Previews: PreviewProvider {
    static var previews: some View {
        FlashCard(word: "sun" )
            .environment(\.colorScheme, .dark)
    }
}
