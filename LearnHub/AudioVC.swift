//
//  AudioVC.swift
//  LearnHub
//
//  Created by mac on 05/11/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class AudioVC: UIViewController {
    
    var vlc: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        do{
            let song_url = Bundle.main.path(forResource: "audio", ofType: "mp3")
            try vlc = AVAudioPlayer(contentsOf: NSURL(string: song_url!) as! URL)
        }
        catch{}
    }
    
    @IBAction func callPlay(_ sender: Any) {
        vlc.play()
    }
    
    @IBAction func callPause(_ sender: Any) {
        vlc.pause()
    }
    
    @IBAction func callStop(_ sender: Any) {
        vlc.stop()
        vlc.currentTime = 0
    }
    
    @IBAction func callReplay(_ sender: Any) {
        vlc.currentTime = 0
        vlc.play()
    }
}
