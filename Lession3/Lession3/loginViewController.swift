//
//  loginViewController.swift
//  Lession3
//
//  Created by ThanhLong on 3/27/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createview()
        // Do any additional setup after loading the view.
    }
    func createview(){
        let image = UIImageView(image: UIImage(named: "background"))
        view.addSubview(image)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        image.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        image.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        image.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        let subview = UIView()
        subview.translatesAutoresizingMaskIntoConstraints = false
        subview.backgroundColor = UIColor.gray
        subview.alpha = 0.7
        view.addSubview(subview)
        subview.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        subview.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        subview.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 30).isActive = true
        subview.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/4, constant: 0).isActive = true
        let text1 = UITextField()
        subview.addSubview(text1)
        text1.translatesAutoresizingMaskIntoConstraints = false
        text1.leadingAnchor.constraint(equalTo: subview.leadingAnchor, constant: 20).isActive = true
        
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
