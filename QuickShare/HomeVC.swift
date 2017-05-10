//
//  HomeVC.swift
//  QuickShare
//
//  Created by Gokul Nath KP on 04/05/17.
//  Copyright © 2017 Gokul Nath KP. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var warningMessageContainer: UIView!
    @IBOutlet weak var warningMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showWarningMessage(message: Messages.WARNING_MESSAGE_LOADING)
        warningMessageContainer.isHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    func showWarningMessage(message: String) {
        warningMessageContainer.isHidden = false
        warningMessage.text = message
    }
    
    func hideWarningMessage() {
        warningMessageContainer.isHidden = true
        warningMessage.text = ""
    }

    @IBAction func aboutAction(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: Messages.ABOUT_DIALOG_TITLE, message: Messages.LINE_BREAK + Messages.ABOUT_DIALOG_MESSAGE + Messages.DOUBLE_LINE_BREAK + Messages.ABOUT_DIALOG_EMAIL_ID, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: Messages.ACTION_OK, style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

}

