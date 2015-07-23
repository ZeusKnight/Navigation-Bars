//
//  ViewController.swift
//  Navigation Bars
//
//  Created by mocha on 7/19/15.
//  Copyright (c) 2015 mocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var timerOutput: UILabel!
    
    @IBOutlet var lapOutput: UILabel!
    
    @IBAction func timerStart(sender: AnyObject) {
        if(!timer.valid) {
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true);
        }
    }
    
    @IBAction func timerStop(sender: AnyObject) {
        if(timer.valid) {
            timer.invalidate();
            isPaused = true;
        }
    }
    
    @IBAction func timerReset(sender: AnyObject) {
        count = 0;
        timerOutput.text = "";
        lapOutput.text = "";
    }
    
    @IBAction func timerLaps(sender: AnyObject) {
        lapOutput.text = lapOutput.text! + "\n" + count.description;
    }
    
    var timer = NSTimer();
    
    var count = 0;
    
    var isPaused = false;
    
    func result() {
        count++;
        timerOutput.text = count.description;
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

