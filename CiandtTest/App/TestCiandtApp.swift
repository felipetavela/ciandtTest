//
//  test_ciandtApp.swift
//  testciandt
//
//  Created by Felipe Tavela on 24/09/25.
//

import SwiftUI

@main
struct TestCiandtApp: App {
    var body: some Scene {
        WindowGroup {
            let repository = PostsRepositoryImpl()
            let useCase = FetchPostsUseCase(repository: repository)
            let viewModel = PostsViewModel(fetchPostsUseCase: useCase)
            PostsListView(viewModel: viewModel)
        }
    }
}
