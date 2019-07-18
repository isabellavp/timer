//
//  ViewController.swift
//  timer
//
//  Created by Apple on 7/18/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var time = 0
    
    var timer = Timer()
   
    @IBAction func start(_ sender: UIButton) {
        runTimer()
        action()
    }
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerViewController.start), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()

    }
    
    
    @IBAction func reset(_ sender: Any) {
        // timer.invalidate()
        time = 0
        label.text = ("0")
    }
   
    func action(){
        time += 1
        label.text = String(time)
    }
    
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}

