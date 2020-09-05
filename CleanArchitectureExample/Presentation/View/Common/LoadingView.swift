//
//  LoadingView.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/07/28.
//  Copyright © 2020 idonuntius. All rights reserved.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ActivityIndicator(isAnimating: .constant(true))
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
