//
//  ExploreViewController.swift
//  LetsEat
//
//  Created by Jerry Che on 4/2/20.
//  Copyright © 2020 Jerry Che. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String,at indexPath: IndexPath)
    
        -> UICollectionReusableView{
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath)
            return headerView
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"exploreCell", for: indexPath)
        return cell
    }
    

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    @IBAction func unwindLocationCancel(seque:UIStoryboardSegue){
        
    }
    
}
