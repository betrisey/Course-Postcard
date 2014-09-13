//
//  ViewController.swift
//  Postcard
//
//  Created by Samuel Bétrisey on 13.09.14.
//  Copyright (c) 2014 Samuel Bétrisey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtNom: UITextField!
    @IBOutlet weak var txtMessage: UITextField!
    @IBOutlet weak var lblNom: UILabel!
    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var btnSend: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSendPresse(sender: UIButton) {
        txtMessage.resignFirstResponder()
        
        lblMessage.text = txtMessage.text
        lblMessage.textColor = UIColor.redColor()
        lblMessage.hidden = false
        txtMessage.text = ""
        
        lblNom.text = txtNom.text
        lblNom.textColor = UIColor.blueColor()
        lblNom.hidden = false
        txtNom.text = ""
        
        btnSend.setTitle("Mail sent", forState: UIControlState.Normal)
    }

}

