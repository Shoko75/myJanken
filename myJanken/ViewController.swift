//
//  ViewController.swift
//  myJanken
//
//  Created by 橋本 翔子 on 2018/11/04.
//  Copyright © 2018 橋本 翔子. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var anwerImageView: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    // じゃんけん(数字)
    var answerNumber = 0
    
    @IBAction func shuffleAction(_ sender: Any) {

        var newAnswerNumber = 0
        
        // ランダムに結果を出すが、前回の結果と異なる場合のみ採用
        // repeatは繰り返しを意味する
        repeat {
            // 0,1,2の数値をランダムに算出（乱数）
            // arc4random_uniform()の戻り値はUInt32だがSwiftの標準的な整数型Intにキャスト（変換）する
            newAnswerNumber = Int(arc4random_uniform(3))
        } while answerNumber == newAnswerNumber
        
        answerNumber = newAnswerNumber
        
        if answerNumber == 0 {
            //グー
            answerLabel.text = "グー"
            anwerImageView.image = UIImage( named:"gu")
        } else if answerNumber == 1 {
            //チョキ
            answerLabel.text = "チョキ"
            anwerImageView.image = UIImage( named:"choki")
        } else if answerNumber == 2 {
            //パー
            answerLabel.text = "パー"
            anwerImageView.image = UIImage( named:"pa")
        }
        
    }
}

