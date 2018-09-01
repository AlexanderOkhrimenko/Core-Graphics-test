//
//  ViewController.swift
//  QuartzFun
//
//  Created by xander on 05.11.2017.
//  Copyright © 2017 dhard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var counterView: CounterView!
    
    @IBAction func wwwwww(_ sender: Any) {
        
        
    }
    
    @IBOutlet weak var yelloView: QuartzFunView!
    @IBOutlet weak var counterLabel: UILabel!
 
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counterLabel.text = String(counterView.counter)
    
        yelloView.a = 6.0
        yelloView.w = 340.0
     //   let a = QuartzFunView()
    
        // Do any additional setup after loading the view, typically from a nib.
      //  labelOne.frame = CGRect(x: 0, y: 0, width: 100, height: 30)
      //  labelZero.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
    }
    
    @IBAction func pussButtonPress(_ sender: PushButton) {
        if sender.isAddButton {
            counterView.counter += 1
        } else {
            if counterView.counter > 0 {
                counterView.counter -= 1
            }
        }
        
        counterLabel.text = String(counterView.counter)
    }
    
}

