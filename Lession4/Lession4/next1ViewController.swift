//
//  next1ViewController.swift
//  Lession4
//
//  Created by ThanhLong on 3/27/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit

class next1ViewController: UIViewController {
    
    @IBOutlet weak var lbl: UILabel!
    var string : String? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = string
//        navigationController?.popToRootViewController(animated: true)
        
     /* Duyet danh sach cac viewcontroller
         for index in (navigationController?.viewControllers)!{
            navigationController?.popToViewController(index, animated: true)
        }
    */
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btndismis(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    //    self.dismiss(animated: true, completion: nil)
    }
    

}


