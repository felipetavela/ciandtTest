//
//  StateView.swift
//  testciandt
//
//  Created by Felipe Tavela on 24/09/25.
//

import SwiftUI

struct StateView: View {
    let state: PostsViewModel.State
    let onRetry: () -> Void
    
    var body: some View {
        switch state {
        case .idle:
            EmptyView()
        case .loading:
            ProgressView("Loading...")
        case .failure(let message):
            VStack {
                Text(message).foregroundColor(.red)
                Button("Retry", action: onRetry)
            }
        case .success:
            EmptyView()
        }
    }
}
