//
//  CalulatorViewController.swift
//  Lession3
//
//  Created by ThanhLong on 3/27/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit

class CalulatorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createbutton()
        // Do any additional setup after loading the view.
    }
    func createbutton(){
        let btn0 = UIButton(type: UIButtonType.system)
        let btn1 = UIButton(type: UIButtonType.system)
        let btn2 = UIButton(type: UIButtonType.system)
        let btn3 = UIButton(type: UIButtonType.system)
        let btn4 = UIButton(type: UIButtonType.system)
        let btn5 = UIButton(type: UIButtonType.system)
        let btn6 = UIButton(type: UIButtonType.system)
        let btn7 = UIButton(type: UIButtonType.system)
        let btn8 = UIButton(type: UIButtonType.system)
        let btn9 = UIButton(type: UIButtonType.system)
        let btnac = UIButton(type: UIButtonType.system)
        let btncongtru = UIButton(type: UIButtonType.system)
        let btnpercent = UIButton(type: UIButtonType.system)
        let btncham = UIButton(type: UIButtonType.system)
        let btnbang = UIButton(type: UIButtonType.system)
        let btncong = UIButton(type: UIButtonType.system)
        let btntru = UIButton(type: UIButtonType.system)
        let btnnhan = UIButton(type: UIButtonType.system)
        let btnchia = UIButton(type: UIButtonType.system)
        let lbl = UILabel()
        lbl.font = UIFont.boldSystemFont(ofSize: 70)
        lbl.textColor = UIColor.white
        lbl.textAlignment = .right
        lbl.text = "0"
        custombtn(btn: btn0, type: 1)
        custombtn(btn: btn1, type: 1)
        custombtn(btn: btn2, type: 1)
        custombtn(btn: btn3, type: 1)
        custombtn(btn: btn4, type: 1)
        custombtn(btn: btn5, type: 1)
        custombtn(btn: btn6, type: 1)
        custombtn(btn: btn7, type: 1)
        custombtn(btn: btn8, type: 1)
        custombtn(btn: btn9, type: 1)
        custombtn(btn: btnnhan, type: 2)
        custombtn(btn: btncham, type: 1)
        custombtn(btn: btnac, type: 1)
        custombtn(btn: btncongtru, type: 1)
        custombtn(btn: btnpercent, type: 1)
        custombtn(btn: btnbang, type: 2)
        custombtn(btn: btncong, type: 2)
        custombtn(btn: btntru, type: 2)
        custombtn(btn: btnchia, type: 2)
        btn0.setTitle("0", for: UIControlState.normal)
        btn1.setTitle("1", for: UIControlState.normal)
        btn2.setTitle("2", for: UIControlState.normal)
        btn3.setTitle("3", for: UIControlState.normal)
        btn4.setTitle("4", for: UIControlState.normal)
        btn5.setTitle("5", for: UIControlState.normal)
        btn6.setTitle("6", for: UIControlState.normal)
        btn7.setTitle("7", for: UIControlState.normal)
        btn8.setTitle("8", for: UIControlState.normal)
        btn9.setTitle("9", for: UIControlState.normal)
        btnbang.setTitle("=", for: UIControlState.normal)
        btncong.setTitle("+", for: UIControlState.normal)
        btntru.setTitle("-", for: UIControlState.normal)
        btnnhan.setTitle("x", for: UIControlState.normal)
        btnchia.setTitle("/", for: UIControlState.normal)
        btncham.setTitle(".", for: UIControlState.normal)
        btnac.setTitle("AC", for: UIControlState.normal)
        btncongtru.setTitle("+/-", for: UIControlState.normal)
        btnpercent.setTitle("%", for: UIControlState.normal)
        view.addSubview(btn0)
        view.addSubview(btn1)
        view.addSubview(btn2)
        view.addSubview(btn3)
        view.addSubview(btn4)
        view.addSubview(btn5)
        view.addSubview(btn6)
        view.addSubview(btn7)
        view.addSubview(btn8)
        view.addSubview(btn9)
        view.addSubview(btncong)
        view.addSubview(btntru)
        view.addSubview(btnnhan)
        view.addSubview(btnchia)
        view.addSubview(btnbang)
        view.addSubview(btnac)
        view.addSubview(btncongtru)
        view.addSubview(btnpercent)
        view.addSubview(btncham)
        view.addSubview(lbl)
        //bnt0
        btn0.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        btn0.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        btn0.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/6, constant: 0).isActive = true
        btn0.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2, constant: 0).isActive = true
    
        //btncham
        btncham.leftAnchor.constraint(equalTo: btn0.rightAnchor, constant: 0).isActive = true
        btncham.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        btncham.widthAnchor.constraint(equalTo: btn0.widthAnchor, multiplier: 1/2, constant: 0).isActive = true
        btncham.heightAnchor.constraint(equalTo: btn0.heightAnchor, multiplier: 1, constant: 0 ).isActive = true
       
        //btnbang
        btnbang.leftAnchor.constraint(equalTo: btncham.rightAnchor, constant: 0).isActive = true
        btnbang.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        btnbang.heightAnchor.constraint(equalTo: btncham.heightAnchor, multiplier: 1, constant: 0).isActive = true
        btnbang.widthAnchor.constraint(equalTo: btncham.widthAnchor, multiplier: 1, constant: 0).isActive = true
        
        //btn1
        btn1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        btn1.bottomAnchor.constraint(equalTo: btn0.topAnchor, constant: 0).isActive = true
        btn1.heightAnchor.constraint(equalTo: btncham.heightAnchor, multiplier: 1, constant: 0).isActive = true
        btn1.widthAnchor.constraint(equalTo: btncham.widthAnchor, multiplier: 1, constant: 0).isActive = true
       
        //btn2
        btn2.leftAnchor.constraint(equalTo: btn1.rightAnchor, constant: 0).isActive = true
        btn2.bottomAnchor.constraint(equalTo: btn0.topAnchor, constant: 0).isActive = true
        btn2.heightAnchor.constraint(equalTo: btncham.heightAnchor, multiplier: 1, constant: 0).isActive = true
        btn2.widthAnchor.constraint(equalTo: btncham.widthAnchor, multiplier: 1, constant: 0).isActive = true
        //btn3
        btn3.leftAnchor.constraint(equalTo: btn2.rightAnchor, constant: 0).isActive = true
        btn3.bottomAnchor.constraint(equalTo: btn0.topAnchor, constant: 0).isActive = true
        btn3.heightAnchor.constraint(equalTo: btncham.heightAnchor, multiplier: 1, constant: 0).isActive = true
        btn3.widthAnchor.constraint(equalTo: btncham.widthAnchor, multiplier: 1, constant: 0).isActive = true
        //btncong
        btncong.leftAnchor.constraint(equalTo: btn3.rightAnchor, constant: 0).isActive = true
        btncong.bottomAnchor.constraint(equalTo: btn0.topAnchor, constant: 0).isActive = true
        btncong.heightAnchor.constraint(equalTo: btncham.heightAnchor, multiplier: 1, constant: 0).isActive = true
        btncong.widthAnchor.constraint(equalTo: btncham.widthAnchor, multiplier: 1, constant: 0).isActive = true
        //btn4
        btn4.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        btn4.bottomAnchor.constraint(equalTo: btn1.topAnchor, constant: 0).isActive = true
        btn4.heightAnchor.constraint(equalTo: btncham.heightAnchor, multiplier: 1, constant: 0).isActive = true
        btn4.widthAnchor.constraint(equalTo: btncham.widthAnchor, multiplier: 1, constant: 0).isActive = true
        //bnt5
        btn5.leftAnchor.constraint(equalTo: btn4.rightAnchor, constant: 0).isActive = true
        btn5.bottomAnchor.constraint(equalTo: btn1.topAnchor, constant: 0).isActive = true
        btn5.heightAnchor.constraint(equalTo: btncham.heightAnchor, multiplier: 1, constant: 0).isActive = true
        btn5.widthAnchor.constraint(equalTo: btncham.widthAnchor, multiplier: 1, constant: 0).isActive = true
        //bnt6
        btn6.leftAnchor.constraint(equalTo: btn5.rightAnchor, constant: 0).isActive = true
        btn6.bottomAnchor.constraint(equalTo: btn1.topAnchor, constant: 0).isActive = true
        btn6.heightAnchor.constraint(equalTo: btncham.heightAnchor, multiplier: 1, constant: 0).isActive = true
        btn6.widthAnchor.constraint(equalTo: btncham.widthAnchor, multiplier: 1, constant: 0).isActive = true
        //btntru
        btntru.leftAnchor.constraint(equalTo: btn6.rightAnchor, constant: 0).isActive = true
        btntru.bottomAnchor.constraint(equalTo: btn1.topAnchor, constant: 0).isActive = true
        btntru.heightAnchor.constraint(equalTo: btncham.heightAnchor, multiplier: 1, constant: 0).isActive = true
        btntru.widthAnchor.constraint(equalTo: btncham.widthAnchor, multiplier: 1, constant: 0).isActive = true
        //btn7
        btn7.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        btn7.bottomAnchor.constraint(equalTo: btn4.topAnchor, constant: 0).isActive = true
        btn7.heightAnchor.constraint(equalTo: btncham.heightAnchor, multiplier: 1, constant: 0).isActive = true
        btn7.widthAnchor.constraint(equalTo: btncham.widthAnchor, multiplier: 1, constant: 0).isActive = true
        //bnt8
        btn8.leftAnchor.constraint(equalTo: btn7.rightAnchor, constant: 0).isActive = true
        btn8.bottomAnchor.constraint(equalTo: btn4.topAnchor, constant: 0).isActive = true
        btn8.heightAnchor.constraint(equalTo: btncham.heightAnchor, multiplier: 1, constant: 0).isActive = true
        btn8.widthAnchor.constraint(equalTo: btncham.widthAnchor, multiplier: 1, constant: 0).isActive = true
        //btn9
        btn9.leftAnchor.constraint(equalTo: btn8.rightAnchor, constant: 0).isActive = true
        btn9.bottomAnchor.constraint(equalTo: btn4.topAnchor, constant: 0).isActive = true
        btn9.heightAnchor.constraint(equalTo: btncham.heightAnchor, multiplier: 1, constant: 0).isActive = true
        btn9.widthAnchor.constraint(equalTo: btncham.widthAnchor, multiplier: 1, constant: 0).isActive = true
        //btnnhan
        btnnhan.leftAnchor.constraint(equalTo: btn9.rightAnchor, constant: 0).isActive = true
        btnnhan.bottomAnchor.constraint(equalTo: btn4.topAnchor, constant: 0).isActive = true
        btnnhan.heightAnchor.constraint(equalTo: btncham.heightAnchor, multiplier: 1, constant: 0).isActive = true
        btnnhan.widthAnchor.constraint(equalTo: btncham.widthAnchor, multiplier: 1, constant: 0).isActive = true
        //btnac
        btnac.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        btnac.bottomAnchor.constraint(equalTo: btn7.topAnchor, constant: 0).isActive = true
        btnac.heightAnchor.constraint(equalTo: btncham.heightAnchor, multiplier: 1, constant: 0).isActive = true
        btnac.widthAnchor.constraint(equalTo: btncham.widthAnchor, multiplier: 1, constant: 0).isActive = true
        //btncongtru
        btncongtru.leftAnchor.constraint(equalTo: btnac.rightAnchor, constant: 0).isActive = true
        btncongtru.bottomAnchor.constraint(equalTo: btn7.topAnchor, constant: 0).isActive = true
        btncongtru.heightAnchor.constraint(equalTo: btncham.heightAnchor, multiplier: 1, constant: 0).isActive = true
        btncongtru.widthAnchor.constraint(equalTo: btncham.widthAnchor, multiplier: 1, constant: 0).isActive = true
        //btnpercent
        btnpercent.leftAnchor.constraint(equalTo: btncongtru.rightAnchor, constant: 0).isActive = true
        btnpercent.bottomAnchor.constraint(equalTo: btn7.topAnchor, constant: 0).isActive = true
        btnpercent.heightAnchor.constraint(equalTo: btncham.heightAnchor, multiplier: 1, constant: 0).isActive = true
        btnpercent.widthAnchor.constraint(equalTo: btncham.widthAnchor, multiplier: 1, constant: 0).isActive = true
        //btnchia
        btnchia.leftAnchor.constraint(equalTo: btnpercent.rightAnchor, constant: 0).isActive = true
        btnchia.bottomAnchor.constraint(equalTo: btn7.topAnchor, constant: 0).isActive = true
        btnchia.heightAnchor.constraint(equalTo: btncham.heightAnchor, multiplier: 1, constant: 0).isActive = true
        btnchia.widthAnchor.constraint(equalTo: btncham.widthAnchor, multiplier: 1, constant: 0).isActive = true
        //label
        lbl.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        lbl.bottomAnchor.constraint(equalTo: btnac.topAnchor, constant: 0).isActive = true
        lbl.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/6, constant: 0).isActive = true
        lbl.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1, constant: 0).isActive = true
        lbl.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    func custombtn(btn: UIButton, type : Int) {
            btn.layer.borderWidth = 0.5
        btn.translatesAutoresizingMaskIntoConstraints = false
            btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
            if (type == 1){
                 btn.setTitleColor(UIColor.black, for: UIControlState.normal)
                 btn.backgroundColor = UIColor.lightGray
            }
            if type == 2 {
                 btn.setTitleColor(UIColor.white, for: UIControlState.normal)
                 btn.backgroundColor = UIColor.orange
            }
        
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
