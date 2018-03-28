//
//  delegateViewController.swift
//  Lession4
//
//  Created by ThanhLong on 3/28/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit
protocol delegatepassingdata: class {
    func dosomething(Stringdata :String)
}
class delegateViewController: UIViewController{
    @IBOutlet weak var lbl: UILabel!
     weak var delegate: delegatepassingdata?
    var tmp: String = ""
    func dosomething(Stringdata: String) {
        self.lbl.text = Stringdata
    }
    
    func getdata(){
        delegate?.dosomething(Stringdata: "framgia training!")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lbl.text = tmp
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnback(_ sender: Any) {
        getdata()
        navigationController?.popViewController(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

