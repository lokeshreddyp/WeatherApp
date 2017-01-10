//
//  WeatherVC.swift
//  Weatherapp
//
//  Created by lokeshreddy on 1/9/17.
//  Copyright © 2017 lokeshreddy. All rights reserved.
//

import UIKit
import Alamofire

class WeatherVC: UIViewController,UITableViewDataSource,UITableViewDelegate{

    @IBOutlet weak var dateLBL: UILabel!
    
    @IBOutlet weak var currenttempLBL: UILabel!
    
    @IBOutlet weak var locationLBL: UILabel!
    
    @IBOutlet weak var tempimage: UIImageView!
    
    @IBOutlet weak var titletempLBL: UILabel!
    
    @IBOutlet weak var tableView: UITableView!

    
    var currentweather:CurrentWeather!
    
    
    override func viewDidLoad() {
        
    currentweather    = CurrentWeather()
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        print(URL)
        print(😝)
       
        currentweather.weatherapicall {
            print("got here third")
             self.jsondata()
        }
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath)
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    

    
    func jsondata()
    {
        currenttempLBL.text = "\(currentweather.currenttemperature)"
        locationLBL.text = currentweather.cityname
        dateLBL.text = currentweather.date
        titletempLBL.text = currentweather.weathertype
        tempimage.image = UIImage(named: currentweather.weathertype)
       
        
        
    }
    
}

