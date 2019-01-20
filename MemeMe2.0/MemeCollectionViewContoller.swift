//
//  MemeCollectionViewContoller.swift
//  MemeMe2.0
//
//  Created by Alessandro Losavio on 1/20/19.
//  Copyright © 2019 Losavio. All rights reserved.
//

import Foundation
import UIKit


class MemeCollectionViewController: UICollectionViewController{
    
    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }

    
    
    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(memes.count)
        //TODO: Implement flowLayout here.
        
}
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.memes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeViewCollectionCell", for: indexPath) as! MemeViewCollectionCell
        let meme = self.memes[(indexPath as NSIndexPath).row]
        
        // Set the name and image
        cell.top.text = meme.top
        cell.image.image = meme.finalImage
        cell.bottom.text = meme.bottom
        //cell.schemeLabel.text = "Scheme: \(villain.evilScheme)"
        
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath:IndexPath) {
        
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        detailController.meme = self.memes[(indexPath as NSIndexPath).row]
        self.navigationController!.pushViewController(detailController, animated: true)
        
    }
    
}
