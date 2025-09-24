//
//  PostsRepository.swift
//  testciandt
//
//  Created by Felipe Tavela on 24/09/25.
//

import Foundation

class PostsRepositoryImpl: PostsRepository {
    private let api = APIService()
    
    func fetchPosts() async throws -> [Post] {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            throw URLError(.badURL)
        }
        
        let dtos: [PostDTO] = try await api.request(url)
        return dtos.map { $0.toEntity() }
    }
}
