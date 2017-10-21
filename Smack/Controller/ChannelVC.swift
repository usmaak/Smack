//
//  ChannelVC.swift
//  Smack
//
//  Created by Scott Kilbourn on 10/20/17.
//  Copyright © 2017 Scott Kilbourn. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

}
