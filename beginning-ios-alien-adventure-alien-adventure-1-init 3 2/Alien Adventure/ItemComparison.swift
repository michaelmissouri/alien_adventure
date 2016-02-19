//
//  ItemComparison.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

func <(lhs: UDItem, rhs: UDItem) -> Bool {
    
    var compareItems: Bool
    
    if lhs.rarity == rhs.rarity && lhs.baseValue < rhs.baseValue {
        compareItems = true
        
    } else if lhs.rarity.rawValue < rhs.rarity.rawValue {
        compareItems = true
        
    } else {
        compareItems = false
        
    }
    
    return compareItems
    
}
    

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 5"