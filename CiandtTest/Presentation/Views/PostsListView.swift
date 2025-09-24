//
//  PostsListView.swift
//  testciandt
//
//  Created by Felipe Tavela on 24/09/25.
//

import SwiftUI

struct PostsListView: View {
    @StateObject var viewModel: PostsViewModel
    
    var body: some View {
        NavigationView {
            Group {
                switch viewModel.state {
                case .success(let posts):
                    List(posts) { post in
                        NavigationLink(destination: PostDetailView(post: post)) {
                            VStack(alignment: .leading) {
                                Text(post.title).font(.headline)
                                Text(post.body).lineLimit(2).font(.subheadline)
                            }
                        }
                        .accessibilityIdentifier("PostCell_\(post.id)")
                    }
                    .refreshable {
                        await viewModel.loadPosts(isRefresh: true)
                    }
                default:
                    StateView(state: viewModel.state) {
                        Task { await viewModel.loadPosts() }
                    }
                }
            }
            .navigationTitle("Posts")
        }
        .task {
            await viewModel.loadPosts()
        }
    }
}
