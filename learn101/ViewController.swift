//
//  ViewController.swift
//  learn101
//
//  Created by ジエーンポール ソリバ on 5/9/15.
//  Copyright (c) 2015 ジエーンポール ソリバ. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var label1: NSTextField!
    @IBOutlet weak var counter1: NSTextField!
    @IBOutlet weak var input1: NSTextField!
    
    var count = 0
    var timerCounter = 0
    var defaultCounter: Int = 1
//    var timer = NSTimer()
    
    func updateTimer() {
        counter1.stringValue = String(count)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTimer"), repeats: true)
        var xTimer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("udpateTimer"), userInfo: nil, repeats: true)
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func button1(sender: AnyObject) {
        var a:Int? = input1.stringValue.toInt()
        if a != nil {
            increment(a!)
        } else {
            increment(defaultCounter)
        }

        label1.stringValue = "test \(count)"
    }
    
    func increment(a: Int) {
        count += a
    }
}

