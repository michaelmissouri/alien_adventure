//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        var returnValue = false
        var firstStringShuffle = true
        var secondStringShuffle = true
        var lengthRequirement = false
        var indexArrayString1 = Array<String.CharacterView.Index>()
        var indexArrayString2 = Array<String.CharacterView.Index>()
        
        if shuffle.characters.count == s1.characters.count + s2.characters.count {
            
            lengthRequirement = true
        }
        
        for character in s1.characters {
            
            for index in shuffle.characters.indices {
                
                if character == shuffle[index] {
                    indexArrayString1.append(index)
                }
            }
        }
        
        for character in s2.characters {
            
            for index in shuffle.characters.indices {
                
                if character == shuffle[index] {
                    indexArrayString2.append(index)
                }
            }
        }
        
        
        var test1 = shuffle.characters.startIndex
        var test2 = shuffle.characters.startIndex
        
        for value in indexArrayString1 {
            
            if test1 > value {
                firstStringShuffle = false
            }
            
            test1 = value
            
        }
        
        for value in indexArrayString2 {
            
            if test2 > value {
                secondStringShuffle = false
            }
            
            test2 = value
            
        }
        
        
        if firstStringShuffle && secondStringShuffle && lengthRequirement {
            
            returnValue = true
        }
        
        return returnValue
    }
}
