//
//  Location.swift
//  Weatherapp
//
//  Created by lokeshreddy on 1/19/17.
//  Copyright © 2017 lokeshreddy. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() { }
        var latitude:Double!
        var longitude:Double!
    
}
