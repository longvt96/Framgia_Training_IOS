//
//  LoadmoreViewController.swift
//  Lession5
//
//  Created by ThanhLong on 3/29/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit

class LoadmoreViewController: UIViewController {
    var mang:[String]!
    @IBOutlet weak var table: UITableView!
    let refreshControl = UIRefreshControl()
    var itemsPerBatch = 10
    var reachedEndOfItems = false
    override func viewDidLoad() {
        super.viewDidLoad()
        mang = ["iphone","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo"]
        // Do any additional setup after loading the view.
        if #available(iOS  10.0, *){
            self.table.refreshControl = refreshControl
        }else {
            self.table.addSubview(refreshControl)
        }
        refreshControl.addTarget(self, action: #selector(refreshData(_:)), for: .valueChanged)
        refreshControl.tintColor = UIColor(red:0.25, green:0.72, blue:0.85, alpha:1.0)
        refreshControl.attributedTitle = NSAttributedString(string: "please wait")
    }
    @objc func refreshData(_ sender: Any){
        self.table.reloadData()
        self.refreshControl.endRefreshing()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func loadMore(){
        if itemsPerBatch < mang.count-10 {
            itemsPerBatch+=10
            self.table.reloadData()
        }else{
            let i = mang.count - itemsPerBatch
            itemsPerBatch+=i
            self.table.reloadData()
        }
        
    }
}
extension LoadmoreViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsPerBatch
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellload")
        cell?.textLabel?.text = mang[indexPath.row]
        if indexPath.row == itemsPerBatch - 1 {
            self.loadMore()
        }
        return cell!
    }
}
