//
//  loginVC.swift
//  LearnHub
//
//  Created by mac on 05/11/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class loginVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func passwordAct(_ sender: UITextField) {
    }
    
    @IBAction func loginbtn(_ sender: UIButton) {
        //self.performSegue(withIdentifier: "UsernameIdentifier", sender: nil)
        
        if (password.text == "123456789" ){
            performSegue(withIdentifier: "AA", sender: nil)
            
            
        }
        else {
            let alert1 = UIAlertController(title: "Warning", message: "Incorrect Password", preferredStyle: .alert)
            alert1.addAction(UIAlertAction(title: "ok", style: .default, handler:nil))
            self.present(alert1,animated: true,completion: nil)
            
        }
    }
    
    
    @IBOutlet weak var Uname1: UITextField!
    
    @IBAction func Uname2(_ sender: UITextField) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as?
            DashboardVC{
            dest.n=Uname1.text!
        }
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
    @IBAction func forgetbtn(_ sender: Any) {
        let okhandler1 = {
            (action:UIAlertAction)->Void in
            self.Uname1.text = ""
            self.password.text = ""
        }
        
        let alert2 = UIAlertController(title: "Forget Password", message: "Password reset link has been sent on your mail id.", preferredStyle: .alert)
        alert2.addAction(UIAlertAction(title: "Ok", style: .default, handler:okhandler1))
        self.present(alert2,animated: true,completion: nil)
        
    }
    
}
