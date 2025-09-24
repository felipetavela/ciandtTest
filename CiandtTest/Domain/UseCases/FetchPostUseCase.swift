//
//  FetchPostUseCase.swift
//  testciandt
//
//  Created by Felipe Tavela on 24/09/25.
//

import Foundation

struct FetchPostsUseCase {
    let repository: PostsRepository
    
    func execute() async throws -> [Post] {
        try await repository.fetchPosts()
    }
}
