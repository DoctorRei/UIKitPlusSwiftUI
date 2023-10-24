//
//  ContentView.swift
//  UIKitPlusSwiftUI
//
//  Created by Акира on 20.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var targetValue = Int.random(in: 0...100)
    @State private var currentValue = Double.random(in: 0...100)
    @State var alertState = false
    
    var body: some View {
        VStack {
            GameSliderView (
                correntValue: $currentValue,
                targetValue: targetValue,
                color: .black,
                alpha: computeScore()
            )
            
            Button("Проверь меня") {
                alertState.toggle()
            }
            .padding()
            .alert("Your Score", isPresented: $alertState, actions: {}) {
                Text(computeScore().formatted())
            }
            
            Button("Обнови задачу") {
                refreshScore()
            }
        }
    }
    
    private func computeScore() -> Int {
        let difference = abs(targetValue - lround(currentValue))
        return 100 - difference
    }
    
    private func refreshScore() {
        targetValue = Int.random(in: 0...100)
        currentValue = Double.random(in: 0...100)
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
