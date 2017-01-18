//
//  Forecast.swift
//  Weatherapp
//
//  Created by lokeshreddy on 1/18/17.
//  Copyright © 2017 lokeshreddy. All rights reserved.
//

import UIKit
import Alamofire


class Forecast {
    var _date:String!
    var _hightemp:Double!
    var _lowtemp:Double!
    var _weathertype:String!
    
    
    var date:String! {
        if _date == nil {
            _date = ""
        }
    return _date
    }
    
    var hightemp:Double! {
        if _hightemp == nil {
            _hightemp = 0
        }
    return _hightemp
    }
    
    var lowtemp:Double! {
        if _lowtemp == nil {
            _lowtemp = 0
        }
        return _lowtemp
    }
    
    var weathertype:String! {
        if _weathertype == nil {
            _weathertype = ""
        }
        return _weathertype
    }

    
    init(newDict : Dictionary<String , AnyObject>) {
        
       
        //print(self._date)
      if  let temp =  newDict["temp"] as? Dictionary<String, AnyObject>
      {
        if let min = temp["min"] as? Double {
            let mintemp_celsius = round(min - 273.15)
            self._lowtemp = mintemp_celsius
            print("low temp is \(self._lowtemp)")
        }
        print("im out of min")
        
        if let max = temp["max"] as? Double {
            print("im inside max")
            let maxtemp_celsius = round(max - 273.15)
            self._hightemp = maxtemp_celsius
           print("high temp is \(self._hightemp)")
        }
        }
        if let weather = newDict["weather"] as? [Dictionary<String , AnyObject>] {
            if  let main = weather[0]["main"] as? String {
            self._weathertype = main
            }
            
            
        }
        if  let datefromdict  = newDict["dt"] as? Double {
            let unixconverteddate:Date = Date(timeIntervalSince1970 : datefromdict)
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.dateFormat = "EEEE"
            dateFormatter.timeStyle = .none
            self._date = unixconverteddate.dayoftheweek()
        }
        }
            }



//extensions should be written out of the class

extension Date {
    func dayoftheweek() -> String {
    let dateFormatter  = DateFormatter()
    dateFormatter.dateFormat = "EEEE"
    return dateFormatter.string(from: self)
    }
    

}
