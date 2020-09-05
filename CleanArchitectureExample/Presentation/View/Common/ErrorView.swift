//
//  ErrorView.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/07/28.
//  Copyright © 2020 idonuntius. All rights reserved.
//

import SwiftUI

struct ErrorView: View {
    let error: ApiError

    var body: some View {
        Text(error.message)
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(error: ApiError())
    }
}
