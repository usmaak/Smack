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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        
    }
}
