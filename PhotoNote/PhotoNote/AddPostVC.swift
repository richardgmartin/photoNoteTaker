//
//  AddPostVC.swift
//  PhotoNote
//
//  Created by Richard Martin on 2016-05-13.
//  Copyright © 2016 richard martin. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {
    
    @IBOutlet weak var postImage: UIImageView!
    
    @IBOutlet weak var titleField: UITextField!
   
    @IBOutlet weak var descriptionField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postImage.layer.cornerRadius = postImage.frame.size.width / 2
        postImage.clipsToBounds = true
        
    }

    
    @IBAction func makePostBtnPressed(sender: UIButton) {
        
        
    }
    
    @IBAction func cancelBtnPressed(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func addPicBtnPressed(sender: UIButton) {
        sender.setTitle("", forState: .Normal)
    }
}
