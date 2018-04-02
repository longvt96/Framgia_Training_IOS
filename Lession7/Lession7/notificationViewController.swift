//
//  notificationViewController.swift
//  Lession7
//
//  Created by ThanhLong on 4/1/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit
import UserNotifications

class notificationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge]) { (grandted, error) in
            if grandted{
                print("Notification allow")
            }else{
                print(error?.localizedDescription ?? "")
            }
        }
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnsend(_ sender: Any) {
        schedlueNotification(insec: 5) { (complete) in
            if complete == true{
                print("Complete!")
            }else{
                print("Error!")
            }
        }
    }
    func schedlueNotification(insec: TimeInterval , completeHandel: @escaping (_ Sucsecc: Bool) ->()){
        let imgname = "image"
        guard let url = Bundle.main.url(forResource: imgname, withExtension: "JPG") else {
            completeHandel(false)
            return
        }
        var attachement : UNNotificationAttachment
        attachement = try! UNNotificationAttachment(identifier: "MyNotification", url: url, options:.none)
        let noti = UNMutableNotificationContent()
        noti.title = "New Notification"
        noti.subtitle = "There are great!"
        noti.body = "The new notification from ios 10 "
        noti.badge = 1
        noti.attachments = [attachement]
        noti.categoryIdentifier = "categorydemo"
        let notitrigger = UNTimeIntervalNotificationTrigger(timeInterval: insec, repeats: false)
        var dateComponents = DateComponents()
        dateComponents.hour = 10
        dateComponents.minute = 4
        let triger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        let reqset = UNNotificationRequest(identifier: "MyNotification", content: noti, trigger: notitrigger)
        UNUserNotificationCenter.current().add(reqset) { (error) in
            if error != nil{
                print("error")
                completeHandel(false)
            }else{
                completeHandel(true)
            }
        }
    }
}
