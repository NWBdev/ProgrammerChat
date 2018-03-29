//
//  insetTextField.swift
//  ProgrammerChat
//
//  Created by Nathaniel Burciaga on 3/28/18.
//  Copyright © 2018 Nathaniel Burciaga. All rights reserved.
//

import UIKit

class insetTextField: UITextField {

    private var textSetOffSet: CGFloat = 20
    private var padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0) //what it should look like
    
    override func awakeFromNib() {
        let placeHolder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedStringKey.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        self.attributedPlaceholder = placeHolder
        super.awakeFromNib()
    }
    
    
    //textfield non editing
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    //when you are typing for placeholder
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
}
