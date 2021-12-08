//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        let title = sender.currentTitle!
        playSound(title: title)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            // Bring's sender's opacity back up to fully opaque
            sender.alpha = 1.0
          }
    }
    
    func playSound(title : String) {
        let url = Bundle.main.url(forResource: title, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
    
}

