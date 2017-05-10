//
//  HomeVC.swift
//  QuickShare
//
//  Created by Gokul Nath KP on 04/05/17.
//  Copyright © 2017 Gokul Nath KP. All rights reserved.
//

import UIKit

class HomeVC: BaseVC {

    @IBOutlet weak var warningMessageContainer: UIView!
    @IBOutlet weak var warningMessage: UILabel!
    
    private var profileDataAvailable: Bool!
    private var isCardDataAvailable: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showWarningMessage(message: Messages.WARNING_MESSAGE_LOADING)
        warningMessageContainer.isHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        isProfileSaved()
        isCardAvailable()
        showProfileAndCardWarning()
    }
    
    func isProfileSaved() {
        profileDataAvailable = defaults.bool(forKey: UserDefaultKeys.IS_PROFILE_AVAILABLE)
        if (profileDataAvailable) {
            loadProfileData()
        } else {
            showWarningMessage(message: Messages.WARNING_MESSAGE_PROFILE_NOT_SET)
        }
    }
    
    func isCardAvailable() {
        isCardDataAvailable = defaults.bool(forKey: UserDefaultKeys.IS_CARDS_AVAILABLE)
        if (isCardDataAvailable) {
            loadCardData()
        } else {
            showWarningMessage(message: Messages.WARNING_MESSAGE_CARD_NOT_AVAILABLE)
        }
    }
    
    func showProfileAndCardWarning() {
        if (!profileDataAvailable && !isCardDataAvailable) {
            let warningMessage = Messages.WARNING_MESSAGE_CARD_NOT_AVAILABLE + Messages.DOUBLE_LINE_BREAK + Messages.WARNING_MESSAGE_PROFILE_NOT_SET
            showWarningMessage(message: warningMessage)
        }
    }
    
    func loadProfileData() {
        
    }
    
    func loadCardData() {
        
    }
    
    func showWarningMessage(message: String) {
        warningMessageContainer.isHidden = false
        warningMessage.text = message
    }
    
    func hideWarningMessage() {
        warningMessageContainer.isHidden = true
        warningMessage.text = Messages.EMPTY
    }

    @IBAction func aboutAction(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: Messages.ABOUT_DIALOG_TITLE, message: Messages.LINE_BREAK + Messages.ABOUT_DIALOG_MESSAGE + Messages.DOUBLE_LINE_BREAK + Messages.ABOUT_DIALOG_EMAIL_ID, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: Messages.ACTION_OK, style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

}

