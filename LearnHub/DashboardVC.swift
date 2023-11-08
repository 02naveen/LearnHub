//
//  DashboardVC.swift
//  LearnHub
//
//  Created by mac on 05/11/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class DashboardVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Uname.text = n
        
    }
    
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var Uname: UILabel!
    var n = " "
    
    @IBAction func switch2(_ sender: Any) {
    if switch1.isOn {
        view.backgroundColor = UIColor.orange
    }
    else {
        view.backgroundColor = UIColor.black
        }
    }
}
