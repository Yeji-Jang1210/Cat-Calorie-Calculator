//
//  VideoViewController.swift
//  project12038
//
//  Created by 소프트웨어컴퓨터 on 2020/11/24.
//

import UIKit
import AVKit

class VideoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func playVideo(_ sender: UIButton) {
        let file:String? = Bundle.main.path(forResource:"video", ofType:"mp4")
        let url = NSURL(fileURLWithPath: file!)
        let playerController = AVPlayerViewController()
        let player = AVPlayer(url: url as URL)
        playerController.player = player
        self.present(playerController, animated: true)
        player.play()
    }
    
}
