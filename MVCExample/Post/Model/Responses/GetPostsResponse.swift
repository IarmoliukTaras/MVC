//
//  getPostResponse.swift
//  MVCExample
//
//  Created by 123 on 30.08.17.
//  Copyright © 2017 123. All rights reserved.
//

import Foundation

struct GetPostsResponse {
    
    let posts: [Post]
    
    
    init(json: Any) throws {
        guard let array = json as? [[String: Any]] else { throw NetworkingError.someError }
        var posts = [Post]()
        for item in array {
            guard let post = Post(dict: item) else { continue }
            posts.append(post)
        }
        self.posts = posts
    }
}
