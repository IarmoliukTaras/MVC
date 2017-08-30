//
//  PostCell.swift
//  MVCExample
//
//  Created by 123 on 30.08.17.
//  Copyright © 2017 123. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyTextView: UITextView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func conf(withPost post: Post) {
        self.titleLabel.text = post.title
        self.bodyTextView.text = post.body
        
    }

}
