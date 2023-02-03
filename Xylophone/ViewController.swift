//
//  ViewController.swift
//  Xylophone
//
//  Created by Mac OS on 25.01.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    @IBAction func keyPressed(_ sender: UIButton) {
       // print(sender.titleLabel?.text)
        playSound(soundName: sender.titleLabel?.text! ?? "D")
        
        sender.alpha = 0.5
        let seconds = 0.2
        
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            sender.alpha = 1
        }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}


