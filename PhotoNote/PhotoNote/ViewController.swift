//
//  ViewController.swift
//  PhotoNote
//
//  Created by Richard Martin on 2016-05-12.
//  Copyright © 2016 richard martin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!

    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // test data
        
        
        let post1 = Post(imagePath: "", title: "Post 1", description: "This is Post 1")
        let post2 = Post(imagePath: "", title: "Post 2", description: "This is Post 2")
        let post3 = Post(imagePath: "", title: "Post 3", description: "This is Post 3")

        posts.append(post1)
        posts.append(post2)
        posts.append(post3)

        tableView.reloadData()
        
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let post = posts[indexPath.row]
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell {
            cell.configureCell(post)
            return cell
        }
        else {
            let cell = PostCell()
            cell.configureCell(post)
            return cell
        }
        
    }
    
    // custom cell wants to know the height for the row (cell) at indexpath
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 87.0
    }
    
    // optional :: for editing individual rows
    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }


}

