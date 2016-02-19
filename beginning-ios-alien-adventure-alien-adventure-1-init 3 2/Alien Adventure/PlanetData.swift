//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright Â© 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        
        let planetInfo = NSBundle.mainBundle().URLForResource("PlanetData", withExtension: "json")
        let rawPlanetsJSON = NSData(contentsOfURL: planetInfo!)
        
        var planetDictFromJSON: NSArray!
        do {
            planetDictFromJSON = try! NSJSONSerialization.JSONObjectWithData(rawPlanetsJSON!, options: NSJSONReadingOptions()) as! [[String:AnyObject]]
        }
        
        var planetNames = String()
        var topValue = 0
        
        for planet in planetDictFromJSON {
            var planetValue = 0
            
            if let commonItems = planet.objectForKey("CommonItemsDetected") as? Int {
                planetValue += commonItems
            }
            if let uncommonItems = planet.objectForKey("UncommonItemsDetected") as? Int {
                planetValue += uncommonItems
            }
            if let rareItems = planet.objectForKey("RareItemsDetected") as? Int {
                planetValue += rareItems
            }
            if let legendaryItems = planet.objectForKey("LegendaryItems") as? Int {
                planetValue += legendaryItems
            }
            if planetValue > topValue {
                topValue = planetValue
                planetNames = planet.objectForKey("Name") as! String
            }
        }
        
        return planetNames
   }

}



// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: x