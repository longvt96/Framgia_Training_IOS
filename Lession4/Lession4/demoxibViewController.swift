//
//  demoxibViewController.swift
//  Lession4
//
//  Created by ThanhLong on 3/28/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit

class demoxibViewController: UIViewController {

    @IBOutlet weak var customview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let custom = Bundle.main.loadNibNamed("demoxib", owner: self, options: nil)?.first as? UIView{
            customview.addSubview(custom)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
