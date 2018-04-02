//
//  SetcalViewController.swift
//  Lession7
//
//  Created by ThanhLong on 4/2/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit
import  UserNotifications

class SetcalViewController: UIViewController {

    @IBOutlet weak var lblname: UITextField!
    @IBOutlet weak var date: UIDatePicker!
    var timedpick = DateComponents()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func schedlueNotification(time: DateComponents, completeHandel: @escaping (_ Sucsecc: Bool) ->()){
        let noti = UNMutableNotificationContent()
        noti.title = "New Notification"
        noti.subtitle = "There are great!"
        noti.body = "The new notification from ios 10 "
        let triger = UNCalendarNotificationTrigger(dateMatching: time, repeats: false)
        let reqset = UNNotificationRequest(identifier: "MyNotification", content: noti, trigger: triger)
        UNUserNotificationCenter.current().add(reqset) { (error) in
            if error != nil{
                print("error")
                completeHandel(false)
            }else{
                completeHandel(true)
            }
        }
    }

    @IBAction func btn(_ sender: Any) {
        let name = self.lblname.text!
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
      //  let txtDatePicker = formatter.string(from: self.date.date)
        self.timedpick = self.date.calendar.dateComponents([.day,.month,.year,.hour,.minute], from: self.date.date)
        print("Name: \(name)  Date: \(self.timedpick.day!)")
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "calcell"), object: self, userInfo: ["date":(name:name,date:self.timedpick)])
        schedlueNotification(time: self.timedpick) { (complete) in
            if complete == true{
                print("Complete!")
            }else{
                print("Error!")
            }
        }
        self.navigationController?.popViewController(animated: true)
    }
}
