//
//  ViewController.swift
//  Count
//
//  Created by Kusunose Hosho on 2020/04/28.
//  Copyright © 2020 Kusunose Hosho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number: Int = 0  // int(整数)という型の変数の名前「number」を使う。初期値は０に設定
    @IBOutlet var label: UILabel!  //　ストーリーボード上で「label」という名前のUILabelの部分を使う
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //　labelの色の変色
    func number_color(){
        if number < 0 {
            label.textColor = UIColor.red
        }else if number >= 0 && number < 10{
            label.textColor = UIColor.black
        }else if number >= 10 {
            label.textColor = UIColor.blue
        }
    }
    
    @IBAction func plus() {   //　func pulusメソッドの中で、プラスボタンを押したときの動作が記述されている
        
        number = number + 1
        label.text = String(number)     // numberという変数の中身を取り出して、label.textに表示させる
        
//        if number >= 10 {
//            label.textColor = UIColor.blue
//        } else if number >= 0 {
//            label.textColor = UIColor.black
//        } else if number < 0 {
//            label.textColor = UIColor.red
//        }
        
        number_color()
    }
    
    @IBAction func minus() {
        
        number = number - 1
        label.text = String(number)
        
//        if number < 0 {
//            label.textColor = UIColor.red
//        } else if number >= 0 && number <= 10 {
//            label.textColor = UIColor.black
//        } else if number > 10{
//            label.textColor = UIColor.blue
//        }
        
        number_color()
    }
    
    @IBAction func multiple() {
        
        number = number * number
        label.text = String(number)
        
        number_color()
    }
    
    @IBAction func divide() {
        
        number = number / number
        label.text = String(number)
        
        number_color()
    }
    
    @IBAction func clear() {
        
        number = 0
        label.textColor = UIColor.black
        label.text = String(number)
    }
    
    
}

