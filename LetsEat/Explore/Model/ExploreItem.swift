//
//  ExploreItem.swift
//  LetsEat
//
//  Created by Jerry Che on 4/21/20.
//  Copyright © 2020 Jerry Che. All rights reserved.
//

import Foundation

struct ExploreItem{
    var name: String
    var image: String
}

extension ExploreItem{
    init(dict:[String:AnyObject]){
        self.name = dict["name"] as! String
        self.image = dict["image"] as! String
    }
}
