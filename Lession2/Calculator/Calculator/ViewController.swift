//
//  ViewController.swift
//  Calculator
//
//  Created by ThanhLong on 3/26/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var constrainviewcal: NSLayoutConstraint!
    @IBOutlet weak var viewcal: UIView!
    
    let  btnac : UIButton = UIButton.init(type: UIButtonType.system) as UIButton
    let  btnlunisolar : UIButton = UIButton.init(type: UIButtonType.system) as UIButton
    let  btnpercent : UIButton = UIButton.init(type: UIButtonType.system) as UIButton
    let  btndiv : UIButton = UIButton.init(type: UIButtonType.system) as UIButton
    let  btnmul : UIButton = UIButton.init(type: UIButtonType.system) as UIButton
    let  btnsub : UIButton = UIButton.init(type: UIButtonType.system) as UIButton
    let  btnsum : UIButton = UIButton.init(type: UIButtonType.system) as UIButton
    let  btnequal : UIButton = UIButton.init(type: UIButtonType.system) as UIButton
    let  btn : UIButton = UIButton.init(type: UIButtonType.system) as UIButton
    let  btn1 : UIButton = UIButton.init(type: UIButtonType.system) as UIButton
    let  btn2 : UIButton = UIButton.init(type: UIButtonType.system) as UIButton
    let  btn3 : UIButton = UIButton.init(type: UIButtonType.system) as UIButton
    let  btn4 : UIButton = UIButton.init(type: UIButtonType.system) as UIButton
    let  btn5 : UIButton = UIButton.init(type: UIButtonType.system) as UIButton
    let  btn6 : UIButton = UIButton.init(type: UIButtonType.system) as UIButton
    let  btn7 : UIButton = UIButton.init(type: UIButtonType.system) as UIButton
    let  btn8 : UIButton = UIButton.init(type: UIButtonType.system) as UIButton
    let  btn9 : UIButton = UIButton.init(type: UIButtonType.system) as UIButton
    let  btn0 : UIButton = UIButton.init(type: UIButtonType.system) as UIButton
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editbuton()
        addsubview()
    }
    func editbuton(){
          self.constrainviewcal.constant = self.view.frame.height - (5 * (self.view.frame.width/4) )
          btn1.setTitle("1", for: UIControlState.normal)
          btn2.setTitle("2", for: UIControlState.normal)
          btn3.setTitle("3", for: UIControlState.normal)
          btn4.setTitle("4", for: UIControlState.normal)
          btn5.setTitle("5", for: UIControlState.normal)
          btn6.setTitle("6", for: UIControlState.normal)
          btn7.setTitle("7", for: UIControlState.normal)
          btn8.setTitle("8", for: UIControlState.normal)
          btn9.setTitle("9", for: UIControlState.normal)
          btnsum.setTitle("+", for: UIControlState.normal)
          btnsub.setTitle("-", for: UIControlState.normal)
          btnmul.setTitle("*", for: UIControlState.normal)
          btndiv.setTitle("/", for: UIControlState.normal)
          btnequal.setTitle("=", for: UIControlState.normal)
          btn.setTitle(".", for: UIControlState.normal)
          btn0.setTitle("0", for: UIControlState.normal)
          btnlunisolar.setTitle("+-", for: UIControlState.normal)
          btnpercent.setTitle("%", for: UIControlState.normal)
          btnac.setTitle("AC", for: UIControlState.normal)
          custombutton(btn: btn1,0, CGFloat(self.view.frame.height - 2*self.view.frame.width/4 ))
          custombutton(btn: btn2,btn1.frame.width, CGFloat(self.view.frame.height - 2*self.view.frame.width/4 ))
          custombutton(btn: btn3,btn1.frame.width*2, CGFloat(self.view.frame.height - 2*self.view.frame.width/4 ))
          custombutton(btn: btnsum,btn1.frame.width*3, CGFloat(self.view.frame.height - 2*self.view.frame.width/4 ))
          btnsum.backgroundColor = UIColor.orange
          custombutton(btn: btn4,0, CGFloat(self.view.frame.height - 3*self.view.frame.width/4 ))
          custombutton(btn: btn5,btn1.frame.width, CGFloat(self.view.frame.height - 3*self.view.frame.width/4 ))
          custombutton(btn: btn6,btn1.frame.width*2, CGFloat(self.view.frame.height - 3*self.view.frame.width/4 ))
          custombutton(btn: btnsub,btn1.frame.width*3, CGFloat(self.view.frame.height - 3*self.view.frame.width/4 ))
          btnsub.backgroundColor = UIColor.orange
          custombutton(btn: btn7,0, CGFloat(self.view.frame.height - 4*self.view.frame.width/4 ))
          custombutton(btn: btn8,btn1.frame.width, CGFloat(self.view.frame.height - 4*self.view.frame.width/4 ))
          custombutton(btn: btn9,btn1.frame.width*2, CGFloat(self.view.frame.height - 4*self.view.frame.width/4 ))
          custombutton(btn: btnmul,btn1.frame.width*3, CGFloat(self.view.frame.height - 4*self.view.frame.width/4 ))
          btnmul.backgroundColor = UIColor.orange
          custombutton(btn: btnac,0, CGFloat(self.view.frame.height - 5*self.view.frame.width/4 ))
          custombutton(btn: btnlunisolar,btn1.frame.width, CGFloat(self.view.frame.height - 5*self.view.frame.width/4 ))
          custombutton(btn: btnpercent,btn1.frame.width*2, CGFloat(self.view.frame.height - 5*self.view.frame.width/4 ))
          custombutton(btn: btndiv,btn1.frame.width*3, CGFloat(self.view.frame.height - 5*self.view.frame.width/4 ))
          btndiv.backgroundColor = UIColor.orange
          custombutton(btn: btnequal, btn1.frame.width*3, CGFloat(self.view.frame.height - self.view.frame.width/4))
          custombutton(btn: btn , btn1.frame.width*2, CGFloat(self.view.frame.height - self.view.frame.width/4))
          btnequal.backgroundColor = UIColor.orange
          btn0.frame = CGRect(x: 0, y: (self.view.frame.height-self.view.frame.width/4), width: self.view.frame.width/2, height: self.view.frame.width/4)
          btn0.setTitleColor(UIColor.black, for: UIControlState.normal)
          btn0.layer.borderWidth  = 0.5
          btn0.backgroundColor = UIColor.lightGray
          btn0.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
    }
    func addsubview(){
        self.view.addSubview(btn1)
        self.view.addSubview(btn2)
        self.view.addSubview(btn3)
        self.view.addSubview(btn4)
        self.view.addSubview(btn5)
        self.view.addSubview(btn6)
        self.view.addSubview(btn7)
        self.view.addSubview(btn8)
        self.view.addSubview(btn9)
        self.view.addSubview(btnsub)
        self.view.addSubview(btnsum)
        self.view.addSubview(btndiv)
        self.view.addSubview(btnmul)
        self.view.addSubview(btnlunisolar)
        self.view.addSubview(btnac)
        self.view.addSubview(btnpercent)
        self.view.addSubview(btnequal)
        self.view.addSubview(btn)
        self.view.addSubview(btn0)
    }
    func custombutton (btn: UIButton,_ x: CGFloat,_ y: CGFloat)  {
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        btn.frame = CGRect(x: x, y: y, width: self.view.frame.width/4, height: self.view.frame.width/4)
        btn.backgroundColor = UIColor.lightGray
        btn.setTitleColor(UIColor.black, for: UIControlState.normal)
        btn.layer.borderWidth  = 0.5
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

