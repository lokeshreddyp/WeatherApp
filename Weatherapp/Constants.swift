//
//  Constants.swift
//  Weatherapp
//
//  Created by lokeshreddy on 1/10/17.
//  Copyright © 2017 lokeshreddy. All rights reserved.
//

import Foundation

//it knows whether download is completed or not

typealias DownloadComplete = () -> ()




let Base_URL = "http://api.openweathermap.org/data/2.5/weather?"
let Latitude  = "lat="
let Longitude  = "&lon="
let App_Id = "&appid="
let Key = "5db4c88ea8062302acdf2b9118cb4ebe"

let URL = "\(Base_URL)\(Latitude)35\(Longitude)139\(App_Id)\(Key)"

//TYPE ALIAS USAGE
typealias  😂 = String
let 😝:😂 = "welcome world"
