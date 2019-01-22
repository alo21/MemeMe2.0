//
//  MemeDetailViewController.swift
//  MemeMe2.0
//
//  Created by Alessandro Losavio on 1/20/19.
//  Copyright © 2019 Losavio. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {
    
    var meme: Meme!
    
    
    @IBOutlet weak var image: UIImageView!

    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        

        self.tabBarController?.tabBar.isHidden = true
        
        self.image!.image = meme.finalImage
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }


}
