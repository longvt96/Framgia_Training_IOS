//
//  closureViewController.swift
//  Lession4
//
//  Created by ThanhLong on 3/28/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit

class closureViewController: UIViewController {
    var tmp : String = ""
    var onComplete : ((_ data: String) -> ())?
    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lbl.text = tmp
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnbacl(_ sender: Any) {
        onComplete!("Framgia Training!")
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
