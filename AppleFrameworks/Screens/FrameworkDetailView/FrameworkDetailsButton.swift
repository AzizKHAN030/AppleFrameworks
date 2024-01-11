//
//  FrameworkDetailsButton.swift
//  AppleFrameworks
//
//  Created by Azizbek  Rasulov on 11/01/24.
//

import SwiftUI

struct FrameworkDetailsButton: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    FrameworkDetailsButton(title: "Learn More")
}
