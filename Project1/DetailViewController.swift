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
    var selectedPictureNumber: Int = 0
    var totalNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Picture of \(selectedPictureNumber + 1) of \(totalNumber)"
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
            
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    
    
}
