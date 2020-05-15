//
//  FilterItem.swift
//  LetsEat
//
//  Created by Jerry Che on 5/15/20.
//  Copyright © 2020 Jerry Che. All rights reserved.
//

import Foundation

class FilterItem:NSObject{
    
    let filter: String
    let name: String
    
    init(dict:[String: AnyObject]){
        name = dict["name"] as! String
        filter = dict["filter"] as! String
    }
}
