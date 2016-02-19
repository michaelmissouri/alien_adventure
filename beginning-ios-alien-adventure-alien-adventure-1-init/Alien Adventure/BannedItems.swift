//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        let dataFileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist")
        let itemsPListArray = NSArray(contentsOfURL: dataFileURL!)
        var bannedItemArray: [Int] = []
        
        for item in itemsPListArray! {
            if let name = item.objectForKey("Name") as? String {
                if name.containsString("Laser") {
                    if let historicalData = item.objectForKey("HistoricalData") {
                        if let carbonAge = historicalData.objectForKey("CarbonAge") as? Int {
                            if carbonAge < 30 {
                                if let itemID = item.objectForKey("ItemID") as? Int {
                                    bannedItemArray.append(itemID)
                                    print(bannedItemArray)
                                }
                            }
                        }
                    }
                }
            }
        }
        return bannedItemArray
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"