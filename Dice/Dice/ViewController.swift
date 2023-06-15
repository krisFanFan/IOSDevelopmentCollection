//
//  ViewController.swift
//  Dice
//
//  Created by mahongyan on 2023/6/14.
//

import UIKit

class ViewController: UIViewController {
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    // diceImageView1 代表页面上相对应的控件，此为图片（小驼峰命名）
    var count2: Int = 0
    var count1: Int = 0
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBAction func roll(_ sender: Any) {
        updateDiceImage()
        //        // 取整数
        //        count1 = Int.random(in: 1...6)
        //        count2 = Int.random(in: 0...5)
        //        // dice\(count1)  字符串插值
        //        diceImageView1.image = UIImage(named: "dice\(count1)")
        //        diceImageView2.image = UIImage(named: diceArray[count2])
        
    }
    //  viewDidLoad 页面加载后触发
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDiceImage()
    }
    func updateDiceImage(){
        count1 = Int.random(in: 0...5)
        count2 = Int.random(in: 0...5)
        diceImageView1.image = UIImage(named:diceArray[count1])
        diceImageView2.image = UIImage(named: diceArray[count2])
    }
    //    当摇晃手机之后，调用函数
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
        
    }
}

