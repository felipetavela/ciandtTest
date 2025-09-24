//
//  PostsViewModel.swift
//  testciandt
//
//  Created by Felipe Tavela on 24/09/25.
//

import Foundation

@MainActor
final class PostsViewModel: ObservableObject {
    enum State {
        case idle, loading, success([Post]), failure(String)
    }
    
    @Published private(set) var state: State = .idle
    private let fetchPostsUseCase: FetchPostsUseCase
    
    init(fetchPostsUseCase: FetchPostsUseCase) {
        self.fetchPostsUseCase = fetchPostsUseCase
    }
    
    func loadPosts(isRefresh: Bool = false) async {
        // Se não for refresh, mostra loading
        if !isRefresh {
            await MainActor.run { self.state = .loading }
        }
        
        do {
            let posts = try await fetchPostsUseCase.execute()
            print("Posts loaded: \(posts.count)")
            await MainActor.run { self.state = .success(posts) }
        } catch is CancellationError {
            print("Canceled")
        } catch {
            await MainActor.run { self.state = .failure(error.localizedDescription) }
        }
    }
}
