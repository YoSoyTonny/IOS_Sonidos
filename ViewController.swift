//
//  ViewController.swift
//  Sonidos
//
//  Created by equipo on 8/21/19.
//  Copyright © 2019 equipo. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player : AVAudioPlayer?
    
    
    @IBAction func doTapReproducir(_ sender: Any) {
        if player != nil {
            player?.play()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "pokemon-anime-7-pokemon-out.mp3", ofType: nil)
        let url = URL(fileURLWithPath: path!)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
        } catch {
            
        }
        
    }


}

