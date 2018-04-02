//
//  ViewController.swift
//  Lession7
//
//  Created by ThanhLong on 3/31/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    let keynoti = "demokey"
    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(dosomthing(notification:)), name: NSNotification.Name(rawValue: keynoti), object: nil)
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func dosomthing(notification : Notification){
        if let noti = notification.userInfo{
            if let value = noti["aaaa"] as? String {
                self.lbl.text = value
            }
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btn(_ sender: Any) {
    
    }
    
}

