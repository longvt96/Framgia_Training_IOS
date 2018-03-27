//
//  ViewController.swift
//  Lession3
//
//  Created by ThanhLong on 3/26/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        createview()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func createview (){
        let redView = UIView()
        let blueview = UIView()
        let orangeview = UIView()
        let greenview = UIView()
        let whiteview = UIView()
        redView.backgroundColor = UIColor.red
        greenview.backgroundColor = UIColor.green
        blueview.backgroundColor = UIColor.blue
        whiteview.backgroundColor = UIColor.white
        orangeview.backgroundColor = UIColor.orange
        self.view.addSubview(redView)
        self.view.addSubview(blueview)
        self.view.addSubview(greenview)
        self.view.addSubview(whiteview)
        self.view.addSubview(orangeview)
        
        //redview nslayoutconstrain
        let topred = NSLayoutConstraint(item: redView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0)
        let leftred = NSLayoutConstraint(item: redView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0)
        let widthred = NSLayoutConstraint(item: redView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1, constant: 0)
        let heightred = NSLayoutConstraint(item: redView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1/2, constant: 0)
        redView.autoresizesSubviews = false
        redView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([topred,leftred,widthred,heightred])
        
        //blueview nslayoutconstrain
        let topblue = NSLayoutConstraint(item: blueview, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0)
        let leftblue = NSLayoutConstraint(item: blueview, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0)
        let widthblue = NSLayoutConstraint(item: blueview, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1/2, constant: 0)
        let heightblue = NSLayoutConstraint(item: blueview, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1/2, constant: 0)
        blueview.autoresizesSubviews = false
        blueview.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([topblue,leftblue,widthblue,heightblue])
        
        //orangeview nslayoutanchor
        orangeview.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        orangeview.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2, constant: 0).isActive = true
        orangeview.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/4, constant: 0).isActive = true
        orangeview.topAnchor.constraint(equalTo: view.topAnchor, constant:view.frame.height/2).isActive = true
        orangeview.translatesAutoresizingMaskIntoConstraints = false
        
        //greenview
        greenview.leftAnchor.constraint(equalTo: blueview.rightAnchor, constant: 0 ).isActive = true
        greenview.topAnchor.constraint(equalTo: orangeview.bottomAnchor, constant: 0).isActive = true
        greenview.heightAnchor.constraint(equalTo: orangeview.heightAnchor, multiplier: 1, constant: 0).isActive = true
        greenview.widthAnchor.constraint(equalTo: orangeview.widthAnchor, multiplier: 1/2, constant: 0).isActive = true
        greenview.translatesAutoresizingMaskIntoConstraints = false
        
        //whitteview
        whiteview.translatesAutoresizingMaskIntoConstraints = false
        whiteview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        whiteview.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        whiteview.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4, constant: 0).isActive = true
        whiteview.heightAnchor.constraint(equalTo: greenview.heightAnchor, multiplier: 1, constant: 0).isActive = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

