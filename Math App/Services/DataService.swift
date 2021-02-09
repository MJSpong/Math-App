//
//  DataService.swift
//  Math App
//
//  Created by Matthew Spong on 8/2/21.
//

import Foundation

class DataService {
    
    // a static method can be called directly on the class or data type, without creating an instance
    static func getLocalData() -> [Theorem] {
        
        // Parse local json file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        // Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [Theorem]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with JSON decoder
            let decoder = JSONDecoder()
            
            do {
            
                let theoremData = try decoder.decode([Theorem].self, from: data)
            
                // Add the unique IDs
                for r in theoremData {
                    r.id = UUID()
                }
                
                // Return the recipes
                return theoremData
                
            } catch {
                print("Error: could not decode JSON file")
            }
        }
        catch {
            // error with getting data
            print("Error")
            
        }
        
        return [Theorem]()

    }
}
