//
//  FirstViewController.swift
//  MemeMe2.0
//
//  Created by Alessandro Losavio on 1/20/19.
//  Copyright © 2019 Losavio. All rights reserved.
//

import UIKit
import Foundation

class FirstViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem (title: "Start Over", style: .plain, target: self, action: #selector(createNewMeme))
        
    }
        
        
    @objc func createNewMeme() {
            
        }
    

    /*
    // MARK: - Navigation
     

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
