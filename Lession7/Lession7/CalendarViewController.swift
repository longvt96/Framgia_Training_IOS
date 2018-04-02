//
//  CalendarViewController.swift
//  Lession7
//
//  Created by ThanhLong on 4/2/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit
import UserNotifications

class CalendarViewController: UIViewController {
    var  data = [(name: String,date : DateComponents)] ()
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let add = UIBarButtonItem(title: "ADD", style: .plain, target: self, action: #selector(adddate))
        self.navigationItem.rightBarButtonItem = add
        NotificationCenter.default.addObserver(self, selector: #selector(dosomthing(notification:)), name: NSNotification.Name(rawValue: "calcell"), object: nil)
        
    }
    @objc func dosomthing(notification : Notification){
   
        if let noti = notification.userInfo{
                 print("1111")
            if let value = noti["date"] as? (name: String,date : DateComponents) {
               data.append(value)
                self.tableview.reloadData()
            }
        }
        
    }
    @objc func adddate(){
        let Vc = self.storyboard?.instantiateViewController(withIdentifier: "setcal") as! SetcalViewController
        self.navigationController?.pushViewController(Vc, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension CalendarViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellcal") as! CalTableViewCell
        cell.lblname.text = data[indexPath.row].name
        let tmp = "\(data[indexPath.row].date.day!)-\(data[indexPath.row].date.month!)-\(data[indexPath.row].date.year!)  \(data[indexPath.row].date.hour!):\(data[indexPath.row].date.minute!)"
        cell.lbltime.text = tmp
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 90
    }
}
