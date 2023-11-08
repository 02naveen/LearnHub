//
//  BooksVC.swift
//  LearnHub
//
//  Created by mac on 05/11/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class BooksVC: UIViewController,UITableViewDelegate, UITableViewDataSource,UITextFieldDelegate {
    
    var subjects: [String] = ["Swift", "Xcode", "IOSOperatingSystem"]
    var Swift: [String] = ["Swift Programming: The Big Nerd Ranch Guide” by John Gallagher and Matthew Mathias", "iOS Programming: The Big Nerd Ranch Guide” by Aaron Hillegass and Christian Keur", "Swift in Depth” by Tjeerd in ‘t Veen", "iOS Apprentice” by Matthijs Hollemans","SwiftUI by Tutorials” by Audrey Tam, Steve Lipton, and Marin Todorov"," "]
    var Xcode: [String] = ["iOS 16 App Development Essentials","App Development Using iOS iCloud", "Programming Notebook", "iOS 16 Programming for Beginners", "IOS 15 PROGRAMMING"," "]
    var IOSOperatingSystem: [String] = ["Test-Driven iOS Development with Swift", "Advanced iOS App Architecture", "iPhone For Dummies", "iOS 15 Programming Fundamentals with Swift", "SwiftUI by Tutorials", "My iPhone for Seniors", " "]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return subjects.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0) {
            return Swift.count
        }
        else if(section == 1) {
            return Xcode.count
        }
        else {
            return IOSOperatingSystem.count
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return subjects[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "reuse1", for: indexPath)
        if(indexPath.section == 0) {
            cell1.textLabel?.text = Swift[indexPath.row]
        }
        else if(indexPath.section == 1) {
            cell1.textLabel?.text = Xcode[indexPath.row]
        }
        else {
            cell1.textLabel?.text = IOSOperatingSystem[indexPath.row]
        }
        return cell1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var value1 : String = ""
        
        if(indexPath.section == 0) {
            value1 = Swift[indexPath.row]
        }
        else if(indexPath.section == 1) {
            value1 = Xcode[indexPath.row]
        }
        else {
            value1 = IOSOperatingSystem[indexPath.row]
        }
        print(value1)
        
        let alt1 = UIAlertController(title: "Book", message: value1, preferredStyle: .alert)
        alt1.addAction(UIAlertAction(title: "Buy", style: .default, handler: nil))
        self.present(alt1, animated: false, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    

    
}
