//
//  ViewController.swift
//  Count
//
//  Created by Kusunose Hosho on 2020/04/28.
//  Copyright © 2020 Kusunose Hosho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number: Int = 0
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func number_color(){
        if number < 0 {
            label.textColor = UIColor.red
        }else if number >= 0 && number < 10{
            label.textColor = UIColor.black
        }else if number >= 10 {
            label.textColor = UIColor.blue
        }
    }
    
    @IBAction func plus() {
        
        number = number + 1
        label.text = String(number)
        
        number_color()
    }
    
    @IBAction func minus() {
        
        number = number - 1
        label.text = String(number)
        
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

