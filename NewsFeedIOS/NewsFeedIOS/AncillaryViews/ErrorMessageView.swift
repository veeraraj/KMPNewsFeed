//
//  ErrorMessageView.swift
//  NewsFeedIOS
//
//  Created by Veeraraj on 26/02/2024.
//  Copyright © 2024 orgName. All rights reserved.
//

import SwiftUI

struct ErrorMessageView: View {
    var message: String

    var body: some View {
        Text(message)
            .font(.title)
    }
}

#Preview {
    ErrorMessageView(message: "error")
}
