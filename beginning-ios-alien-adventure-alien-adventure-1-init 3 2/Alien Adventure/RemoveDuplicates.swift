//
//  RemoveDuplicates.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func removeDuplicates(inventory: [UDItem]) -> [UDItem] {
        let duplicateItems = inventory.sort() { $0.itemID < $1.itemID}
        let removeDuplicateItems = Array(Set(duplicateItems))
        return removeDuplicateItems
    }
    
}
