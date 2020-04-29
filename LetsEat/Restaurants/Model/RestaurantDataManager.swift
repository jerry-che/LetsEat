//
//  RestaurantDataManager.swift
//  LetsEat
//
//  Created by Jerry Che on 4/28/20.
//  Copyright © 2020 Jerry Che. All rights reserved.
//

import Foundation

class RestaurantDataManager{
    private var items:[RestaurantItem] = []
    
    func fetch(by location: String, with filter: String = "All",completionHandler:(_ items:[RestaurantItem]) -> Void){
        if let file = Bundle.main.url(forResource: location, withExtension: "json"){
            do{
                let data = try Data(contentsOf: file)
                let restaurants = try JSONDecoder().decode([RestaurantItem].self,from: data)
                if filter != "All"{
                    items = restaurants.filter({($0.cuisines.contains(filter))})
                }
                else {items = restaurants}
            }
            catch{
                print("there was an error \(error)")
            }
        }
        completionHandler(items)
    }
    
    func numberofItems() -> Int{
        return items.count
    }
    
    func restaurantItem(at index:IndexPath) -> RestaurantItem{
        return items[index.item]
    }
}
