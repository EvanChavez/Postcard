//
//  ViewController.swift
//  Postcard
//
//  Created by Evan Chavez on 4/21/15.
//  Copyright (c) 2015 Evan Chavez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
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
        //Code will evaluate when we press the button
        //Adding a comment here to test commit on git
        messageLabel.hidden = false
        nameLabel.hidden = false
        
        nameLabel.text = enterNameTextField.text
        messageLabel.text = enterMessageTextField.text
        
        nameLabel.textColor = UIColor.blueColor()
        messageLabel.textColor = UIColor.redColor()
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

