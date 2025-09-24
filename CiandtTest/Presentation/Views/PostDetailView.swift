//
//  PostDetailView.swift
//  testciandt
//
//  Created by Felipe Tavela on 24/09/25.
//

import SwiftUI

struct PostDetailView: View {
    let post: Post
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(post.title).font(.title).bold()
                Text(post.body).font(.body)
            }
            .padding()
        }
        .navigationTitle("Detail")
    }
}


