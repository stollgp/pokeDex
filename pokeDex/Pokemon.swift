//
//  Pokemon.swift
//  pokeDex
//
//  Created by Gary Stoll on 1/17/16.
//  Copyright © 2016 StollenSoft. All rights reserved.
//

import Foundation

class Pokemon {
    private var _name: String!
    private var _pokeDexId: Int!
    
    var name: String {
        return _name
    }
    
    var pokeDexId: Int {
        return _pokeDexId
    }
    
    init(name: String, pokeDexId: Int) {
        self._name = name
        self._pokeDexId = pokeDexId
    }
    
}