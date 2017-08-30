//
//  ViewController.swift
//  MVCExample
//
//  Created by 123 on 29.08.17.
//  Copyright © 2017 123. All rights reserved.
//
//https://jsonplaceholder.typicode.com/posts

import UIKit

class PostVC: UIViewController {
    
    var posts = [Post]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PostNetrworking.getPosts { (response) in
            let posts = response.posts
            self.posts = posts
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }

}

extension PostVC: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as? PostCell {
            let post = self.posts[indexPath.row]
            cell.conf(withPost: post)
            return cell
        } else {
            return PostCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

