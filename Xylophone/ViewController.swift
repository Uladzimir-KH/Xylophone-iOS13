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

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var player: AVAudioPlayer!
    
    func playSound(button: String) {
            let url = Bundle.main.url(forResource: button, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
                    
        }

    
    @IBAction func tapC(_ sender: UIButton) {
        playSound(button: sender.currentTitle!)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
              sender.alpha = 1.0
          }
    }
    
    

}

