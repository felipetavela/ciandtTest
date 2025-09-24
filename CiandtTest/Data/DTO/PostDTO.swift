//
//  PostDTO.swift
//  testciandt
//
//  Created by Felipe Tavela on 24/09/25.
//

import Foundation

struct PostDTO: Codable {
    let id: Int
    let title: String
    let body: String
    
    func toEntity() -> Post {
        Post(id: id, title: title, body: body)
    }
}
