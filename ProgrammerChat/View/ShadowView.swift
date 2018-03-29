//
//  ShadowView.swift
//  ProgrammerChat
//
//  Created by Nathaniel Burciaga on 3/28/18.
//  Copyright © 2018 Nathaniel Burciaga. All rights reserved.
//

import UIKit

// Create a shadow effect on loginView
class ShadowView: UIView {

    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
        super.awakeFromNib()
    }

}
