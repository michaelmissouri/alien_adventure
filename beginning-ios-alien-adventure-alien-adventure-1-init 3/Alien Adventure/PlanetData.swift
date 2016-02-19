//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        
        let popularity: String = ""
        
        let planetInfo = NSBundle.mainBundle().URLForResource("PlanetData", withExtension: "json")
        let rawPlanetsJSON = NSData(contentsOfURL: planetInfo!)
        
        var planetDictFromJSON: [[String: AnyObject]]!
        do {
            planetDictFromJSON = try! NSJSONSerialization.JSONObjectWithData(rawPlanetsJSON!, options: NSJSONReadingOptions()) as! [[String: AnyObject]]
        }
        
        for planet in planetDictFromJSON {
            if let name = planet["Name"] as? String {
                print(name)
            }
            if let common = planet["CommonItemsDetected"] as? Int {
                print(common)
            }
            if let common = planet["CommonItemsDetected"] as? Int {
                print(common)
            }
        }
        
        return popularity
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"