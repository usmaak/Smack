//
//  ChannelVC.swift
//  Smack
//
//  Created by Scott Kilbourn on 10/20/17.
//  Copyright © 2017 Scott Kilbourn. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var userImage: CircleImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        
        NotificationCenter.default.addObserver(self, selector: #selector(ChannelVC.userDataDidChange(_:)), name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
    }
    
    func userDataDidChange(_ notif: Notification) {
        if AuthService.instance.isLoggedIn {
            loginButton.setTitle(UserDataService.instance.name, for: .normal)
            userImage.image = UIImage(named: UserDataService.instance.avatarName)
            userImage.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        }
        else {
            loginButton.setTitle("Login", for: .normal)
            userImage.image = UIImage(named: "menuProfileIcon")
            userImage.backgroundColor = UIColor.clear
        }
    }

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        
    }
}
