//
//  AboutView.swift
//  NewsFeedIOS
//
//  Created by Veeraraj on 23/02/2024.
//  Copyright © 2024 orgName. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    @Environment(\.dismiss)
    private var dismiss
    
    var body: some View {
        NavigationStack {
            AboutListView()
                .navigationTitle("About Device")
                .toolbar {
                    ToolbarItem(placement: .primaryAction) {
                        Button {
                            dismiss()
                        } label: {
                            Text("Done")
                                .bold()
                        }
                    }
                }
        }
    }
}

#Preview {
    AboutView()
}
