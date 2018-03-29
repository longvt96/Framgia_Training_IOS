//
//  customcellViewController.swift
//  Lession5
//
//  Created by ThanhLong on 3/29/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit

class customcellViewController: UIViewController {
    var data = ["Apple","SamSung","Bphone","LG","Sony"]
    var image =  ["apple","samsung","Bphone","LG","Sony"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var table: UITableView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnedit(_ sender: Any) {
        self.table.isEditing = !self.table.isEditing
    }
}
extension customcellViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (data.count)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 95
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Phone" 
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellcus") as! CustomcellTableViewCell
        cell.lbl.text = data[indexPath.row] as? String
        cell.img.image = UIImage(named: image[indexPath.row] as! String)
        
        return cell
    }
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?{
        let share = UITableViewRowAction(style: UITableViewRowActionStyle.default, title: "Share") { (action, indexpath) in
            print("Action tai \(indexpath.row)")
        }
        let delete = UITableViewRowAction(style: UITableViewRowActionStyle.default, title: "Delete") { (action, indexpath) in
            self.image.remove(at: indexPath.row)
            self.data.remove(at: indexPath.row)
            self.table.deleteRows(at: [indexPath], with: UITableViewRowAnimation.fade)
        }
        share.backgroundColor = UIColor.blue
        delete.backgroundColor = UIColor.red
        return [share,delete]
    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let VC = self.storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! DetailViewController
        VC.tmp = (data[indexPath.row],image[indexPath.row]) as? (String, String)
        self.navigationController?.pushViewController(VC, animated: true)
    }
    
    
}
