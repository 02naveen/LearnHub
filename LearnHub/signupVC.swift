//
//  signupVC.swift
//  LearnHub
//
//  Created by mac on 05/11/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class signupVC: UIViewController, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var f4: UITextField!
    @IBOutlet weak var f3: UITextField!
    @IBOutlet weak var f2: UITextField!
    @IBOutlet weak var f1: UITextField!
    @IBOutlet weak var create: UIButton!
    
    @IBAction func createbtn(_ sender: Any) {
         let okhandler1 = {
           (action:UIAlertAction)->Void in
             self.performSegue(withIdentifier: "aba", sender: nil)
        }
        let alert2 = UIAlertController(title: "Account Created", message: "Click Ok for Login", preferredStyle: .alert)
        alert2.addAction(UIAlertAction(title: "Ok", style: .default, handler: okhandler1));
        self.present(alert2,animated: true,completion: nil)
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        f1.resignFirstResponder()
        f2.resignFirstResponder()
        f3.resignFirstResponder()
        f4.resignFirstResponder()
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
