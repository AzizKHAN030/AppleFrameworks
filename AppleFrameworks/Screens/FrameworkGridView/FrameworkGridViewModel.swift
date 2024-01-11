//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Azizbek  Rasulov on 11/01/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
