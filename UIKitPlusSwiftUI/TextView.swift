//
//  SwiftUIView.swift
//  UIKitPlusSwiftUI
//
//  Created by Акира on 24.10.2023.
//

import SwiftUI

struct TextView: View {
    
    let value: Int
    
    var body: some View {
        Text("\(value)")
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(value: 10)
    }
}
