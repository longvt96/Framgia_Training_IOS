//
//  ViewController.swift
//  Lession4
//
//  Created by ThanhLong on 3/27/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,delegatepassingdata{
    func dosomething(Stringdata: String) {
        self.text?.text = Stringdata
    }
    
    @IBOutlet weak var text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "next1"{
            let next1VC = segue.destination as? next1ViewController
            next1VC?.string = self.text.text!
        }
        if segue.identifier == "delegate"{
            let vc = segue.destination as? delegateViewController
            vc?.delegate = self
            vc?.tmp = self.text.text!
        }
        if segue.identifier == "closure"{
            let vc = segue.destination as? closureViewController
            vc?.onComplete = {(data) in
                self.text.text=data
            }
            vc?.tmp = self.text!.text!
        }
   }

    @IBAction func btndelegate(_ sender: Any) {
    }
    @IBOutlet weak var btndelegate: UIButton!
    
    @IBAction func btn(_ sender: Any) {
        let VC = self.storyboard?.instantiateViewController(withIdentifier: "redview")
        self.present(VC!, animated: true, completion: nil)
    }
    @IBAction func clickbtn(_ sender: Any) {
    }
}

