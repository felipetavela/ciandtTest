//
//  PostRepository.swift
//  testciandt
//
//  Created by Felipe Tavela on 24/09/25.
//

import Foundation

protocol PostsRepository {
    func fetchPosts() async throws -> [Post]
}
