//
//  Theorem.swift
//  Math App
//
//  Created by Matthew Spong on 8/2/21.
//

import Foundation

class Theorem: Identifiable, Decodable {
    
    var id: UUID?
    var name: String
    var image: String
    var author: String
    var statement: String
    var proof: [String]
}
