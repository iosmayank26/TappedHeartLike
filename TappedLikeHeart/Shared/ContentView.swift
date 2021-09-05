//
//  ContentView.swift
//  Shared
//
//  Created by Mayank Gupta on 06/09/21.
//

import SwiftUI

struct ContentView: View {
    @State var startAnimation = false
    
    var body: some View {
        Image(systemName: "suit.heart.fill")
            .font(.system(size: 50))
            .foregroundColor(.red)
            .scaleEffect(startAnimation ? 2 : 0)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .contentShape(Rectangle())
            .onTapGesture {
                withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.6)) {
                    startAnimation.toggle()
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                    withAnimation(.interactiveSpring(response: 0.4, dampingFraction: 1, blendDuration: 0.5)) {
                        startAnimation.toggle()
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
