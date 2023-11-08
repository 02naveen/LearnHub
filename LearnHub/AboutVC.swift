//
//  AboutVC.swift
//  LearnHub
//
//  Created by mac on 05/11/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class AboutVC: UIViewController {
    
    @IBOutlet weak var web1: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var UrlString1 = URL(string:"https://www.learninghub.ca/")
        var urlreq1 = URLRequest(url:UrlString1!)
        web1.loadRequest(urlreq1)
       
    }
    
    @IBOutlet weak var switch1: UISwitch!
    @IBAction func switch2(_ sender: Any) {
        if switch1.isOn {
            view.backgroundColor = UIColor.orange
        }
        else {
            view.backgroundColor = UIColor.black
        }
    }
}
