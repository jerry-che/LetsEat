//
//  ExploreDataManager.swift
//  LetsEat
//
//  Created by Jerry Che on 4/21/20.
//  Copyright © 2020 Jerry Che. All rights reserved.
//

import Foundation

class ExploreDataManager: DataManager{
    fileprivate var items:[ExploreItem] = []
    
    func fetch(){
        for data in load(file:"ExploreData"){
            items.append(ExploreItem(dict: data))
        }
    }
    
    func numberOfItems()-> Int{
        return items.count
    }
    
    func explore(at index:IndexPath) -> ExploreItem{
        return items[index.item]
    }
    
}
