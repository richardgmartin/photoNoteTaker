//
//  PostCell.swift
//  PhotoNote
//
//  Created by Richard Martin on 2016-05-12.
//  Copyright © 2016 richard martin. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(post: Post) {
        titleLabel.text = post.title
        descLabel.text = post.postDescription
    }
    
}
