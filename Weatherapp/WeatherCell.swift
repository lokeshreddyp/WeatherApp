//
//  WeatherCell.swift
//  Weatherapp
//
//  Created by lokeshreddy on 1/18/17.
//  Copyright © 2017 lokeshreddy. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

   

    @IBOutlet weak var weatherimage: UIImageView!




    @IBOutlet weak var dayofweek: UILabel!
    @IBOutlet weak var weathertype: UILabel!
    
    @IBOutlet weak var hightmp: UILabel!
    
    @IBOutlet weak var lowtmp: UILabel!
    
    
    func configurecell(forcastapi_table : Forecast) {
        hightmp.text = "\(forcastapi_table.hightemp!)"
        lowtmp.text = "\(forcastapi_table.lowtemp!)"
        dayofweek.text = forcastapi_table.date
        weathertype.text = forcastapi_table.weathertype
        weatherimage.image = UIImage(named: forcastapi_table.weathertype)
        
        
    }
}
