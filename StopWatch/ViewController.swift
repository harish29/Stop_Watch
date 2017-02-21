//
//  ViewController.swift
//  StopWatch
//
//  Created by Geeksoft llc on 2/21/17.
//  Copyright © 2017 Geeksoft llc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var timelabel: UILabel!
    var time = 0
    var timer = Timer()

    
    @IBAction func Start(_ sender: UIButton) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
    }
    
    @IBAction func Pause(_ sender: UIButton) {
        timer.invalidate()
    }

    @IBAction func Reset(_ sender: UIButton) {
        
        time = 0
        timelabel.text = "0"
    }
    
    func action(){
        time += 1
        timelabel.text = String(time)
    }
}

