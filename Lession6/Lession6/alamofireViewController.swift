//
//  alamofireViewController.swift
//  Lession6
//
//  Created by ThanhLong on 3/30/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class alamofireViewController: UIViewController {
     let link = URL(string: "https://api.github.com/users/google/repos")
    var dataarray = [String]()
    let refresh = UIRefreshControl()
    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request(link!, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON { (data) in
            var json = JSON()
            if let value =  JSON( data.result.value) as? JSON{
                json = value
            }
            for item in json {
                self.dataarray.append(item.1["full_name"].stringValue)
            }
             self.tableview.reloadData()
        }
    
        if #available(iOS 10.0, *){
            self.tableview.refreshControl = self.refresh
        }else{
            self.tableview.addSubview(refresh)
        }
        refresh.attributedTitle = NSAttributedString(string: "Loadding")
        refresh.tintColor = UIColor.blue
        refresh.addTarget(self, action: #selector(reload), for: UIControlEvents.valueChanged)
    }
//    class func ApiRequest(api: String,page: Int, completionHandler: @escaping (_ object: JSON) -> ()) {
//
//        Alamofire.request("aa", method: .get, parameters: nil, encoding: JSONEncoding.default).responseJSON { (response) in
//
//            if let status = response.response?.statusCode {
//                switch(status){
//                case 200:
//                    print("success")
//                default:
//                    print("error with response status: \(status)")
//                }
//            }
//
//            if let value = response.result.value {
//                let json = JSON(value)
//                completionHandler(json)
//            }
//
//        }
//    }
    @objc func reload(){
        self.tableview.reloadData()
        self.refresh.endRefreshing()
    }
    @IBOutlet weak var tableview: UITableView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension alamofireViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellala")
        cell?.textLabel?.text = self.dataarray[indexPath.row]
        return cell!
    }
    
    
}
