//
//  ViewController.swift
//  Demo4
//
//  Created by Anh Lê Việt on 9/29/16.
//  Copyright © 2016 Anh Lê Việt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var txtUsername: UITextField!
    
    @IBOutlet weak var tvListUser: UITextView!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPass: UITextField!
    
    var alertView : UIAlertView = UIAlertView()
    var listUser : String  = "List User:"
    var i : Int = 1
    @IBOutlet weak var txtUserProfile: UITextView!
    @IBAction func btnClear(_ sender: AnyObject) {
        txtUsername.text = ""
        txtPass.text = ""
        txtEmail.text = ""
    }
    
    
    
    @IBAction func btnReg(_ sender: AnyObject) {
            if (txtUsername.text?.isEmpty)! || (txtEmail.text?.isEmpty)! || (txtPass.text?.isEmpty)! {
                alertView.title = "error"
                alertView.message = "Please fill all the feilds!"
                alertView.addButton(withTitle: "OK")
                alertView.show()
            }
            else {
                alertView.title = "Success"
                alertView.message = "Register Successfully"
                alertView.addButton(withTitle: "OK")
                alertView.show()
                listUser += "\n" + String(i) +  "." +   txtUsername.text!
                tvListUser.text = listUser
                i += 1
            }
        
    }
    
       override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

