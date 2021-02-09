//
//  TheoremModel.swift
//  Math App
//
//  Created by Matthew Spong on 8/2/21.
//

import Foundation

class TheoremModel: ObservableObject {
    
    @Published var theorems: [Theorem] = []
    
    init() {
        
        // Get the data by calling the static method of the class DataService
        self.theorems = DataService.getLocalData()
    }
    
}
