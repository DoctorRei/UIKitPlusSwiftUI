//
//  GameSliderView.swift
//  UIKitPlusSwiftUI
//
//  Created by Акира on 24.10.2023.
//

import SwiftUI

struct GameSliderView: View {
    
    @Binding var correntValue: Double
    
    let targetValue: Int
    let color: UIColor
    let alpha: Int
    
    var body: some View {
        
        VStack {
            Text(" Передвинь слайдер как можно ближе к значению - \(targetValue)")
                .font(.callout)
                .multilineTextAlignment(.center)
                .padding()
            
            HStack {
                Text("0")
                    .padding()
                SliderView(
                    value: $correntValue,
                    alpha: alpha,
                    color: color)
                Text("100")
                    .padding()
            }
        }
    }
}

struct GameSliderView_Previews: PreviewProvider {
    static var previews: some View {
        GameSliderView(
            correntValue: .constant(30.0),
            targetValue: 55,
            color: .black,
            alpha: 100)
    }
}
