//
//  DetailViewController.swift
//  Project1
//
//  Created by Mehmet Deniz Cengiz on 4/5/20.
//  Copyright © 2020 Deniz Cengiz. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
        
    }
    

   
}
