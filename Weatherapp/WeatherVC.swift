//
//  WeatherVC.swift
//  Weatherapp
//
//  Created by lokeshreddy on 1/9/17.
//  Copyright © 2017 lokeshreddy. All rights reserved.
//

import UIKit
import Alamofire

class WeatherVC: UIViewController{

    @IBOutlet weak var dateLBL: UILabel!
    
    @IBOutlet weak var currenttempLBL: UILabel!
    
    @IBOutlet weak var locationLBL: UILabel!
    
    @IBOutlet weak var tempimage: UIImageView!
    
    @IBOutlet weak var titletempLBL: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

