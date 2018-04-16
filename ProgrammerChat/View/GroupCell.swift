//
//  GroupCell.swift
//  ProgrammerChat
//
//  Created by Nathaniel Burciaga on 4/15/18.
//  Copyright © 2018 Nathaniel Burciaga. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {

    
    //Outlets for Cell
    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var groupDescriptionLbl: UILabel!
    @IBOutlet weak var memberCountLbl: UILabel!
    
    func configureCell(title: String, description: String, memberCount: Int) {
        self.groupTitleLbl.text = title
        self.groupDescriptionLbl.text = description
        self.memberCountLbl.text = String(memberCount)
        
    }

}
