//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], var requestTypes: [UDRequestType]) -> Bool {
            
        for badge in badges {
            if requestTypes.contains(badge.requestType) {
                let badgeIndex = requestTypes.indexOf(badge.requestType)
                requestTypes.removeAtIndex(badgeIndex!)
            }
        }
        if requestTypes.count == 0 {
            return true
        } else {
            return false
        }
    }
}
