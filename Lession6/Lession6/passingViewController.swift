//
//  passingViewController.swift
//  Lession6
//
//  Created by ThanhLong on 3/30/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit

class passingViewController: UIViewController {

    var data = [String]()
    @IBOutlet weak var tbview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let link = URL(string: "https://api.github.com/users/google/repos")
        let task = URLSession.shared.dataTask(with: link!) { (data, response, error) in
            if error != nil{
                print("error")
            }else{
                if let mydata=data{
                    do{
                        print(mydata)
                        let jsonArray = try JSONSerialization.jsonObject(with: mydata, options: JSONSerialization.ReadingOptions.mutableContainers) as! Array<AnyObject>
                        for json in jsonArray{
                            if let item = json as? [String: AnyObject] {
                                if let full_name = item["full_name"] as? String{
                                        self.data.append(full_name)
                                }
                            }
                        }

                    }catch{

                    }
                }
            }

            OperationQueue.main.addOperation {
                self.tbview.reloadData()
            }
        }
        task.resume()
        print(data.count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

}
extension passingViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
//        if data.count  != 0{
            cell?.textLabel?.text = data[indexPath.row]

//        }
        return cell!
    }


}


