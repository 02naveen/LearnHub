//
//  ViewController.swift
//  LearnHub
//
//  Created by mac on 05/11/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func laterbtn(_ sender: Any) {
        let okhandler1 = {
            (action:UIAlertAction)->Void in
        }
        
        let alert2 = UIAlertController(title: "Learning Hub by Naveen Kushwaha", message: "Do it now, Tomorrow never comes.", preferredStyle: .actionSheet)
        alert2.addAction(UIAlertAction(title: "Ok", style: .default, handler:okhandler1))
        self.present(alert2,animated: true,completion: nil)
    }
}
