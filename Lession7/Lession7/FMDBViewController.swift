//
//  FMDBViewController.swift
//  Lession7
//
//  Created by ThanhLong on 4/1/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit
 

class FMDBViewController: UIViewController {
    var data = [Contact]()
    let refesh = UIRefreshControl()
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        reloaddata()
        if #available(iOS 10.0, *){
            self.tableview.refreshControl = refesh
        }else{
            self.tableview.addSubview(refesh)
        }
        refesh.tintColor = UIColor.blue
        refesh.attributedTitle = NSAttributedString(string: "Loadding!")
        refesh.addTarget(self, action: #selector(refreshdata), for: UIControlEvents.valueChanged)
        let add = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addbtn))
        self.navigationItem.rightBarButtonItems = [add,self.editButtonItem]
    }
    @objc func addbtn(){
        print("click add")
        let tmp = Contact()
        tmp.ID = Int(arc4random_uniform(1000))
        tmp.name = "Demo \(tmp.ID)"
        tmp.phone = "aaa"
        tmp.age = 22
        FMDBDatabase.getInstance().InsertData(tmp)
        self.reloaddata()
    }
    override func setEditing(_ editing: Bool, animated: Bool) {
        self.tableview.isEditing = !self.tableview.isEditing
    }
    func reloaddata(){
         data = FMDBDatabase.getInstance().getAllData() as! [Contact]
         self.tableview.reloadData()
    }
    @objc func refreshdata (){
        self.tableview.reloadData()
        self.refesh.endRefreshing()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    func loadmore(){
//        if (count < data.count - 15){
//            count += 15
//            self.tableview.reloadData()
//        }else{
//            count = data.count
//            self.tableview.reloadData()
//        }
//    }
}
extension FMDBViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellfmdb")
        cell?.textLabel?.text = (data[indexPath.row] ).name
        return cell!
    }
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?{
       
        let delete = UITableViewRowAction(style: UITableViewRowActionStyle.default, title: "Delete") { (action, indexpath) in
            FMDBDatabase.getInstance().deletaData(self.data[indexPath.row])
            self.reloaddata()
        }
        delete.backgroundColor = UIColor.red
        return [delete]
    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
//        if editingStyle == UITableViewCellEditingStyle.delete{
//            FMDBDatabase.getInstance().deletaData(self.data[indexPath.row])
//            self.tableview.reloadData()
//        }
//    }
    
}
