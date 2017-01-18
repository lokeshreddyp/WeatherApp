//
//  CurrentWeather.swift
//  Weatherapp
//
//  Created by lokeshreddy on 1/10/17.
//  Copyright © 2017 lokeshreddy. All rights reserved.
//

import Foundation
import Alamofire


class CurrentWeather {
    var _currenttemperature : Double!
    var _date : String!
    var _cityname:String!
    var _weathertype:String!
    
    
    var currenttemperature:Double {
        
            if _currenttemperature == nil
            {
                _currenttemperature = 0.0
            }
                return _currenttemperature
    }
    
    var date : String{
        if _date == nil
        {
            _date = ""
        }

        let dateformatter  = DateFormatter()
        dateformatter.dateStyle = .medium
        dateformatter.timeStyle = .none
        _date = dateformatter.string(from: Date())
        return _date
    }
    
    
   
    
    var cityname :String {
        if _cityname == nil {
            _cityname = ""
        }
        return _cityname
    }
  
    
    
    var weathertype:String {
        if _weathertype == nil {
            _weathertype = ""
        }
        
        return _weathertype
    }
    
    func weatherapicall(completed :  @escaping DownloadComplete) {
        
       // let currentweatherurl = URL(String:URL)!
        Alamofire.request(URL).responseJSON
            {
            response in
            let result = response.result
            print(response)
            
            
            if let dict = result.value as? Dictionary<String , AnyObject> {
                if let name = dict["name"] as? String {
                    self._cityname = name.capitalized
                    
                    print(self._cityname)
                }
                
                if let weather = dict["weather"] as? [Dictionary<String , AnyObject>] {
                    if let wethertype = weather[0]["main"] as? String {
                        self._weathertype = wethertype
                        print(self._weathertype)
                    }
                }
                
                if let main  = dict["main"] as? Dictionary<String , AnyObject> {
                    if let temperature  = main["temp"] as? Double
                    {
                        let celsiustemp = round(temperature - 273.15)
                        self._currenttemperature = celsiustemp
                    print(self._currenttemperature)
                    }
                }
            }
        // print("got first here")
        completed()
        }
        
        //print("got second here")
        //completed()
    }
    
    
}

