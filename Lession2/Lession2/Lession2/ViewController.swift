//
//  ViewController.swift
//  Lession2
//
//  Created by ThanhLong on 3/26/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        let btnleft : UIButton = UIButton.init(type: UIButtonType.custom)
        btnleft.frame = CGRect(x: 0, y: 0, width: 26, height: 16)
        //btnleft.backgroundColor = UIColor.red
        btnleft.setImage(UIImage(named:"icons8-search-30"), for: UIControlState.normal)
        self.textfield.leftView = btnleft
        self.textfield.leftViewMode = UITextFieldViewMode.always
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func changed(_ sender: Any) {
        if let tmp = sender as? UISwitch {
            if (tmp.isOn) {
                self.lbl?.text = "ON"
            }else{
                self.lbl?.text = "OFF"
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

