//
//  PostNetworking.swift
//  MVCExample
//
//  Created by 123 on 30.08.17.
//  Copyright © 2017 123. All rights reserved.
//

import Foundation

class PostNetrworking {
    private init() {}
    
    static func getPosts(completion: @escaping (GetPostsResponse) -> Void) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        NetworkingService.shared.getData(fromUrl: url) { (json) in
            do {
                let response = try GetPostsResponse.init(json: json)
                completion(response)
            } catch {}
        }
    }
}
