//
//  FilterManager.swift
//  LetsEat
//
//  Created by Jerry Che on 5/15/20.
//  Copyright © 2020 Jerry Che. All rights reserved.
//

import Foundation

class FilterManager: DataManager{
    
    func fetch(completionHandler:(_ items:[FilterItem]) ->  Swift.Void){
        var items:[FilterItem] = []
        for data in load(file: "FilterData"){
            items.append(FilterItem(dict:data))
        }
        completionHandler(items)
    }
}
