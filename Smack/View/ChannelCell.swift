//
//  ChannelCell.swift
//  Smack
//
//  Created by Scott Kilbourn on 10/29/17.
//  Copyright © 2017 Scott Kilbourn. All rights reserved.
//

import UIKit

class ChannelCell: UITableViewCell {
    @IBOutlet weak var channelName: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        if selected {
            self.layer.backgroundColor = UIColor(white: 1.0, alpha: 0.2).cgColor
        }
        else {
            self.layer.backgroundColor = UIColor.clear.cgColor
        }
    }

    func configureCell(channel: Channel){
        let title = channel.name ?? ""
        channelName.text = "#\(title)"
    }
}
