//
//  ViewController.swift
//  zhuyinDemo
//
//  Created by rjjq on 2022/7/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    let ary = ["ㄅ","ㄆ","ㄇ","ㄈ","ㄉ","ㄊ","ㄋ","ㄌ","ㄍ","ㄎ","ㄏ","ㄐ","ㄑ","ㄒ","ㄓ","ㄔ","ㄕ","ㄖ","ㄗ","ㄘ","ㄙ","ㄚ","ㄛ","ㄜ","ㄝ","ㄞ","ㄟ","ㄠ","ㄡ","ㄢ","ㄣ","ㄤ","ㄥ","ㄦ","ㄧ","ㄨ","ㄩ"]
    
    @IBOutlet weak var rateSlider: UISlider!
    @IBOutlet weak var volumeSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func speak1(_ sender: UIButton) {
        let data = ary[sender.tag]
        
        print(data, rateSlider.value, volumeSlider.value)
        
        let speech = AVSpeechUtterance(string: data)
        speech.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        speech.rate = rateSlider.value
        speech.volume = volumeSlider.value
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(speech)
    }
    
}

