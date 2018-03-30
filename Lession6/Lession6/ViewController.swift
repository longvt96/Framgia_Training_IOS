//
//  ViewController.swift
//  Lession6
//
//  Created by ThanhLong on 3/30/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var active: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
    //  active.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clickbtn(_ sender: Any) {
        let urlString = "http://wallpapershome.com/images/pages/pic_hs/10151.jpg"
        // Nsoperator
       /* let queue = OperationQueue()
        let operation = BlockOperation {
            let data =  NSData(contentsOf: URL(string: urlString)!)
            OperationQueue.main.addOperation({
                self.imageview.image = UIImage(data: Data(_:data! as Data))
            })
        }
        operation.completionBlock = {
            print("complete")
               self.displayAlert()
        }
        queue.addOperation(operation)*/
     /* GCD
        DispatchQueue.global(qos: .userInitiated).async {
            let data =  NSData(contentsOf: URL(string: urlString)!) //1
            DispatchQueue.main.async {
                self.imageview.image = UIImage(data: Data(_:data! as Data))
                print("thread run")
            }
        }
 
        displayAlert()
       */
    // Group
        let downloadGroup = DispatchGroup()
        downloadGroup.enter()
        print("ddddd")
        let data =  NSData(contentsOf: URL(string: urlString)!)
        self.imageview.image = UIImage(data: Data(_:data! as Data))
        downloadGroup.leave()
        downloadGroup.notify(queue: DispatchQueue.main) {
            self.displayAlert()
        }
        print("111")
    }
    func displayAlert(){
        let alert = UIAlertController(title: "Download", message: "This image downloads succesful", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
