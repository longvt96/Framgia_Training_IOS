//
//  DetailViewController.swift
//  Lession5
//
//  Created by ThanhLong on 3/29/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    var tmp : (String,String)?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lbl.text = tmp?.0
        self.image.image = UIImage(named: (tmp?.1)!)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnback(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
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
