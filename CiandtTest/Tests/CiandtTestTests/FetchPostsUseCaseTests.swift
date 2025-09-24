//
//  CiandtTestTests.swift
//  CiandtTestTests
//
//  Created by Felipe Tavela on 24/09/25.
//

import XCTest
@testable import CiandtTest

final class FetchPostsUseCaseTests: XCTestCase {
    func testExecuteReturnsPosts() async throws {
        let repo = MockPostsRepository()
        let useCase = FetchPostsUseCase(repository: repo)
        
        let posts = try await useCase.execute()
        
        XCTAssertEqual(posts.count, 1)
        XCTAssertEqual(posts.first?.title, "Test Post")
    }
}

final class MockPostsRepository: PostsRepository {
    func fetchPosts() async throws -> [Post] {
        [Post(id: 1, title: "Test Post", body: "Body")]
    }
}
