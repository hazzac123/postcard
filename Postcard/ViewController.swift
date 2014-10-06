//
//  ViewController.swift
//  Postcard
//
//  Created by Ian Curtis on 30/09/2014.
//  Copyright (c) 2014 Hazelton Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterTextTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
   messageLabel.hidden = false
   messageLabel.text = enterTextTextField.text
        messageLabel.textColor = UIColor.redColor()
   enterTextTextField.text = ""
   enterTextTextField.resignFirstResponder()
        
   mailButton.setTitle("Mail Sent", forState: UIControlState . Normal)
    }
}

