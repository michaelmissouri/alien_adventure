//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        var largestNumberCharacter: Character?
        var largestCharacterCount = 0
        var currentCharacterCount = 0
        var characters: [Character] = []
        if inventory.isEmpty {
            return nil
        } else {
            for item in inventory {
                for char in item.name.lowercaseString.characters {
                    characters.append(char)
                }
            }
        }
        let sortedCharacters  = characters.sort()
        var currentCharacter = sortedCharacters[0]
        //print(sortedCharacters)
        for character in sortedCharacters {
            if currentCharacter == character {
                currentCharacterCount++
                if currentCharacterCount > largestCharacterCount {
                    largestCharacterCount = currentCharacterCount
                    largestNumberCharacter = character
                }
            } else {
                currentCharacterCount = 1
                currentCharacter = character
            }
        }
        return largestNumberCharacter
    }
}