//
//  HomeVC.swift
//  QuickShare
//
//  Created by Gokul Nath KP on 04/05/17.
//  Copyright © 2017 Gokul Nath KP. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func aboutAction(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: Messages.ABOUT_DIALOG_TITLE, message: Messages.LINE_BREAK + Messages.ABOUT_DIALOG_MESSAGE + Messages.DOUBLE_LINE_BREAK + Messages.ABOUT_DIALOG_EMAIL_ID, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: Messages.ACTION_OK, style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

}

