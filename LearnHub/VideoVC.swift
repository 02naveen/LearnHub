//
//  VideoVC.swift
//  LearnHub
//
//  Created by mac on 05/11/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class VideoVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var path:NSURL!
    var videoPlayer:AVPlayer!
    var videoPlayerController:AVPlayerViewController!
    
    @IBAction func videobtn(_ sender: UIButton) {
        path = NSURL(fileURLWithPath: Bundle.main.path(forResource: "video", ofType: "mp4")!)
        videoPlayer = AVPlayer(url: path as URL)
        videoPlayerController = AVPlayerViewController()
        videoPlayerController.player = videoPlayer
        self.present(videoPlayerController, animated: true, completion: nil)
        self.videoPlayerController.player?.play()
    }
    
    @IBAction func videobtn2(_ sender: Any) {
        path = NSURL(fileURLWithPath: Bundle.main.path(forResource: "video2", ofType: "mp4")!)
        videoPlayer = AVPlayer(url: path as URL)
        videoPlayerController = AVPlayerViewController()
        videoPlayerController.player = videoPlayer
        self.present(videoPlayerController, animated: true, completion: nil)
        self.videoPlayerController.player?.play()
    }
    
}
