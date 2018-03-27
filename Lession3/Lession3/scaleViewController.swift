//
//  scaleViewController.swift
//  Lession3
//
//  Created by ThanhLong on 3/27/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit

class scaleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createview()
        // Do any additional setup after loading the view.
    }
    func createview(){
        let view1 = UIView()
        let view2 = UIView()
        let view3 = UIView()
        let view4 = UIView()
        let view5 = UIView()
        view1.backgroundColor = UIColor.red
        view2.backgroundColor = UIColor.red
        view3.backgroundColor = UIColor.red
        view4.backgroundColor = UIColor.red
        view5.backgroundColor = UIColor.red
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        view.addSubview(view4)
        view.addSubview(view5)
        //view 3
        view3.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        view3.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        view3.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/8, constant: 0).isActive = true
        view3.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/6, constant: 0).isActive = true
        view3.translatesAutoresizingMaskIntoConstraints = false
        //view2
        view2.leftAnchor.constraint(equalTo: view3.rightAnchor, constant: view.frame.width/6 - view.frame.width/8).isActive = true
        view2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        view2.widthAnchor.constraint(equalTo: view3.widthAnchor, multiplier: 1, constant: 0).isActive = true
        view2.heightAnchor.constraint(equalTo: view3.heightAnchor, multiplier: 1, constant: 0).isActive = true
        view2.translatesAutoresizingMaskIntoConstraints = false
        //view1
        view1.leftAnchor.constraint(equalTo: view2.rightAnchor, constant: view.frame.width/6 - view.frame.width/8).isActive = true
        view1.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        view1.widthAnchor.constraint(equalTo: view3.widthAnchor, multiplier: 1, constant: 0).isActive = true
        view1.heightAnchor.constraint(equalTo: view3.heightAnchor, multiplier: 1, constant: 0).isActive = true
        view1.translatesAutoresizingMaskIntoConstraints = false
        //view 4
        view4.rightAnchor.constraint(equalTo: view3.leftAnchor, constant: view.frame.width/8 - view.frame.width/6 ).isActive = true
        view4.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        view4.widthAnchor.constraint(equalTo: view3.widthAnchor, multiplier: 1, constant: 0).isActive = true
        view4.heightAnchor.constraint(equalTo: view3.heightAnchor, multiplier: 1, constant: 0).isActive = true
        view4.translatesAutoresizingMaskIntoConstraints = false
        //view 5
        view5.rightAnchor.constraint(equalTo: view4.leftAnchor, constant: view.frame.width/8 - view.frame.width/6 ).isActive = true
        view5.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        view5.widthAnchor.constraint(equalTo: view3.widthAnchor, multiplier: 1, constant: 0).isActive = true
        view5.heightAnchor.constraint(equalTo: view3.heightAnchor, multiplier: 1, constant: 0).isActive = true
        view5.translatesAutoresizingMaskIntoConstraints = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
