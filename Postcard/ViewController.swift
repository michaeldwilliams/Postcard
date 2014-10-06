//
//  ViewController.swift
//  Postcard
//
//  Created by Michael Williams on 10/3/14.
//  Copyright (c) 2014 Michael D. Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	
	@IBOutlet weak var messageLabel: UILabel!
	@IBOutlet weak var enterNameTextField: UITextField!
	@IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!

	
	
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	@IBAction func sendMailButtonPressed(sender: UIButton) {
	
    nameLabel.hidden = false
    nameLabel.text = enterNameTextField.text
    nameLabel.textColor = UIColor.blueColor()
    enterNameTextField.text = ""
    enterNameTextField.resignFirstResponder()
    messageLabel.hidden = false
    //comments added to this project
    //here they are
    messageLabel.text = enterMessageTextField.text
    messageLabel.textColor = UIColor.redColor()
        
        
    enterMessageTextField.text = ""
    enterMessageTextField.resignFirstResponder()
    
    mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    
    }
	

}

