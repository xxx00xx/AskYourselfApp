//
//  QuestionerTableViewCell.swift
//  ChatApp
//
//  Created by 古田翔太郎 on 2020/10/14.
//  Copyright © 2020 古田翔太郎. All rights reserved.
//

import UIKit

class QuestionerTableViewCell: UITableViewCell {

    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var messageTextView: UITextView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        backgroundColor = .clear
        //userLabel.layer.cornerRadius = 30
        userImageView.layer.cornerRadius = 30   //アイコンを円に
        messageTextView.layer.cornerRadius = 15
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
