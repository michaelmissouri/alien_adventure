//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        
        var commonRare = 0, unCommonRare = 0, veryRare = 0, legendaryRare = 0
        
        var answerRarity = [UDItemRarity:Int]()
        
        for item in inventory {
            switch item.rarity {
            case .Common:
                commonRare++
            case .Uncommon:
                unCommonRare++
            case .Rare:
                veryRare++
            case .Legendary:
                legendaryRare++
            }
            
        }
        answerRarity = [.Common: commonRare, .Uncommon :unCommonRare, .Rare: veryRare, .Legendary: legendaryRare]
        return answerRarity
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"