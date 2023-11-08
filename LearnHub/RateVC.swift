//
//  RateVC.swift
//  LearnHub
//
//  Created by mac on 05/11/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class RateVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        animimage.animationImages = imgarr
        animimage.animationDuration = 10
        animimage.animationRepeatCount = 0
        animimage.startAnimating()
    }
    
    @IBOutlet weak var animimage: UIImageView!
    
    
    var imgarr : [UIImage] = [
        UIImage(named: "1.jpg")!,
        UIImage(named: "2.jpg")!,
        UIImage(named: "3.jpg")!,
        UIImage(named: "4.jpeg")!,
        UIImage(named: "5.jpg")!
    ]
    
   // Slider code

    @IBOutlet weak var exper: UITextField!
    @IBOutlet weak var star: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func sliderVal(_ sender: Any) {
        let currentValue = Int(slider.value)
        star.text = String(currentValue)
    }
    
    // Button code
    
    @IBAction func subbtn(_ sender: Any) {
    //slider.setValue(slider.maximumValue, animated: true)
        let okhandler1 = {
            (action:UIAlertAction)->Void in
            self.slider.setValue(self.slider.maximumValue, animated: true)
            self.star.text = "5"
            self.exper.text = ""
        }
        
        let alert2 = UIAlertController(title: "Rate Us", message: "Thankyou for your reviews.", preferredStyle: .alert)
        alert2.addAction(UIAlertAction(title: "Ok", style: .default, handler:okhandler1))
        self.present(alert2,animated: true,completion: nil)
    }
    
}
