//
//  ViewController.swift
//  Pomodoro
//
//  Created by Jordi Farras Mañe on 27/01/2019.
//  Copyright © 2019 Jordi Farras Mañe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    var timer:Timer?
    var endDate:Date?
    
    var secondsLeft:TimeInterval = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func timerTick() {
        secondsLeft -= 1
        updateLabel()
        
        if secondsLeft <= 0 {
            timerEnd()
        }
        
    }
    
    func timerStart() {
        
    }
    
    func timerPause() {
        
    }
    
    func timerEnd() {
        
    }
    
    func updateLabel() {
        label.text = String(round(secondsLeft))
    }
    
    @IBAction func tapped(_ sender: Any) {
        
        if timer == nil {
            
            timer = Timer.scheduledTimer(timeInterval: <#T##TimeInterval#>, target: <#T##Any#>, selector: <#T##Selector#>, userInfo: <#T##Any?#>, repeats: <#T##Bool#>)
            
            endDate = Date().addingTimeInterval(secondsLeft)
            
            updateLabel()
        }
    }
    
    
}

