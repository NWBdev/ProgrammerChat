//
//  UserCell.swift
//  ProgrammerChat
//
//  Created by Nathaniel Burciaga on 4/13/18.
//  Copyright © 2018 Nathaniel Burciaga. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {

    //Outlets
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var checkImg: UIImageView!
    
    
    
    func configureCell(profileImg image: UIImage,email: String, isSelected: Bool) {
        self.profileImg.image = image
        self.emailLbl.text = email
        
        if isSelected {
            self.checkImg.isHidden = false
        } else {
            self.checkImg.isHidden = true
        }
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
