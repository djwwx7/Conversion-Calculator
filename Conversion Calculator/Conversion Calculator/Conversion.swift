//
//  Conversion.swift
//  Conversion Calculator
//
//  Created by Whitaker, Cody (MU-Student) on 7/27/17.
//  Copyright © 2017 Whitaker, Cody (MU-Student). All rights reserved.
//

import Foundation

class Convert {
    
    var to: Symbols
    var from: Symbols

    init(convertFrom from: Symbols, convertTo to: Symbols) {
        
        self.to = to
        self.from = from
    }
    
    enum Symbols: String {
        
        case fahrenheit = "°F"
        case celsius = "°C"
        case miles = "m"
        case kilometers = "km"
    }
}
