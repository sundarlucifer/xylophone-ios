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
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func btnPressed(_ sender: UIButton) {
        
        let audioUrl = Bundle.main.url(forResource: sender.currentTitle!, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: audioUrl!)
        player!.play()
        
    }
    

}

