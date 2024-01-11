//
//  FrameworkDetailsView.swift
//  AppleFrameworks
//
//  Created by Azizbek  Rasulov on 11/01/24.
//

import SwiftUI

struct FrameworkDetailsView: View {
    let framework: Framework
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack{
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            } label: {
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .tint(.red)
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailsView(framework: MockData.sampleFramework)
}
