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
    
    // Buttons
    @IBAction func cButton(_ sender: UIButton) {
        playSound(name: "C")
    }
    
    @IBAction func dButton(_ sender: UIButton) {
        playSound(name: "D")
    }
    
    @IBAction func eButton(_ sender: UIButton) {
        playSound(name: "E")
    }
    
    @IBAction func fButton(_ sender: UIButton) {
        playSound(name: "F")
    }
    
    @IBAction func gButton(_ sender: UIButton) {
        playSound(name: "G")
    }
    
    @IBAction func aButton(_ sender: UIButton) {
        playSound(name: "A")
    }
    
    @IBAction func bButton(_ sender: UIButton) {
        playSound(name: "B")
    }
    
    // Functions
    private func playSound(name: String) {
        guard let url = Bundle.main.url(forResource: name, withExtension: "wav") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
}
