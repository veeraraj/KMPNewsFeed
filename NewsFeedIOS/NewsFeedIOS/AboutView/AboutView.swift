//
//  AboutView.swift
//  NewsFeedIOS
//
//  Created by Veeraraj on 23/02/2024.
//  Copyright © 2024 orgName. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationStack {
            AboutListView()
                .navigationTitle("About Device")
        }
    }
}

#Preview {
    AboutView()
}
