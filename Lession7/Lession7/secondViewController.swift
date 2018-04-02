//
//  secondViewController.swift
//  Lession7
//
//  Created by ThanhLong on 3/31/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    let keynoti = "demokey"
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
     //   NotificationCenter.default.addObserver(self, selector: #selector(dosomthing(noti:)), name: NSNotification.Name(rawValue: keynoti) , object: nil)
        
    }
    @objc func dosomthing(noti : Notification){
        if let message = noti.userInfo {
            if let value = message["message"] as? String{
                self.lbl.text = value
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var btn: UIButton!
    
    @IBAction func btn(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: keynoti), object: self, userInfo: ["aaaa":self.text.text ?? ""])
        self.lbl.text = "done!"
    }
}
