//
//  ViewController.swift
//  SwiftSesOynatma
//
//  Created by Ömer on 13.01.2026.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var sesOynatici = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        do{
            let dosyaYolu = Bundle.main.path(forResource: "ses", ofType: "mp3")!
            sesOynatici = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: dosyaYolu))
            sesOynatici.prepareToPlay()
            
        }catch{
            print(error.localizedDescription)
        }
        
        
        
    }

    @IBAction func basla(_ sender: Any) {
        sesOynatici.play()
    }
    
    @IBAction func durdur(_ sender: Any) {
            sesOynatici.stop()
    }
}

