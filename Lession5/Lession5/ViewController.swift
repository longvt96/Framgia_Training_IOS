//
//  ViewController.swift
//  Lession5
//
//  Created by ThanhLong on 3/29/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    var data1 : NSArray?
    override func viewDidLoad() {
        super.viewDidLoad()
        data1 = ["row1","row2","row3","row4"]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var goload: UIBarButtonItem!
    @IBAction func goload(_ sender: Any) {
        let VC = self.storyboard?.instantiateViewController(withIdentifier: "Loadmore") as! LoadmoreViewController
        self.navigationController?.pushViewController(VC, animated: true)
    }
    
}
extension ViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "secsion 1"
        }
        return "secsion2"
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text  = data1?[indexPath.row] as? String
        return cell!
    }
    
    
}
