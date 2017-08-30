//
//  Post.swift
//  MVCExample
//
//  Created by 123 on 30.08.17.
//  Copyright © 2017 123. All rights reserved.
//

import Foundation

struct Post {
    let userId: Int
    let id: Int
    let title: String
    let body: String
    
    init?(dict: [String: Any]) {
        guard let userId = dict["userId"] as? Int,
            let id = dict["id"] as? Int,
            let title = dict["title"] as? String,
            let body = dict["body"] as? String
            else { return nil }
        self.userId = userId
        self.id = id
        self.title = title
        self.body = body
    }
}
