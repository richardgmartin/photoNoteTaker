//
//  Post.swift
//  PhotoNote
//
//  Created by Richard Martin on 2016-05-12.
//  Copyright © 2016 richard martin. All rights reserved.
//

import Foundation

class Post {
    
    private var _imagePath: String
    private var _title: String
    private var _postDescription: String
    
    var imagePath: String {
        return _imagePath
    }
    
    var title: String {
        return _title
    }
    
    var postDescription: String {
        return _postDescription
    }
    
    init(imagePath: String, title: String, description: String) {
        self._imagePath = imagePath
        self._title = title
        self._postDescription = description
    }
}
