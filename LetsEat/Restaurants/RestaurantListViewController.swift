//
//  RestaurantListViewController.swift
//  LetsEat
//
//  Created by Jerry Che on 4/3/20.
//  Copyright © 2020 Jerry Che. All rights reserved.
//

import UIKit

class RestaurantListViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate {
    
    

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
      
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          1
      }
      
      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
          return collectionView.dequeueReusableCell(withReuseIdentifier: "restaurantCell", for: indexPath)
      }

}
