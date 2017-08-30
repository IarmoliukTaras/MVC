//
//  NetworkingService.swift
//  MVCExample
//
//  Created by 123 on 30.08.17.
//  Copyright © 2017 123. All rights reserved.
//

import Foundation


class NetworkingService {
    
    static let shared = NetworkingService()
    
    private init() {}
    
    func getData(fromUrl url: URL, completion: @escaping (Any) -> Void) {
        let session = URLSession.shared
        let task = session.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                completion(json)
            } catch {}
        }
        task.resume()
        
    }
}
