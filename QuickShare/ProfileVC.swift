//
//  ProfileVC.swift
//  QuickShare
//
//  Created by Gokul Nath KP on 04/05/17.
//  Copyright © 2017 Gokul Nath KP. All rights reserved.
//

import UIKit

class ProfileVC: BaseVC {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var companyName: UITextField!
    @IBOutlet weak var companyAddress: UITextField!
    @IBOutlet weak var emailID: UITextField!
    @IBOutlet weak var mobileNumber: UITextField!
    @IBOutlet weak var officeNumber: UITextField!
    @IBOutlet weak var faxNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func actionCancel(_ sender: UIBarButtonItem) {
        
    }

    @IBAction func actionSave(_ sender: UIBarButtonItem) {
        
    }
}

