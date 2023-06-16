//
//  ViewController.swift
//  Xylophone
//
//  Created by 刘军 on 2021/10/12.
//

import UIKit
//播放音频需引入的包
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    let sounds = ["note1","note2","note3","note4","note5","note6","note7",]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func play(_ sender: UIButton) {
        // 通过button 的tag属性区分点击的是那个button sender.tag
        // Bundle.main 代表此Xylopone 这个项目 加上！表示确切的资源
        play(sender.tag)
    }

    func play(_ tag:Int) {
        // 通过button 的tag属性区分点击的是那个button sender.tag
        // Bundle.main 代表此Xylopone 这个项目 加上！表示确切的资源
        let url = Bundle.main.url(forResource: sounds[tag], withExtension: "wav")!
        // 遇到有抛出throws的方法，使用do catch 处理错误
        do {
            //表示一个播放器
             player =  try AVAudioPlayer(contentsOf: url)
            //播放器播放
            player.play()
        }catch{
            print(error)
        }
    }
    
}

