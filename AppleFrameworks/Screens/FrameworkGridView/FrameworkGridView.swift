//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Azizbek  Rasulov on 11/01/24.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks){ framework in
                        NavigationLink(value:framework){
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailsView(framework: framework)
            }
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}
