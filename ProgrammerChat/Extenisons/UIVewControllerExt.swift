//
//  UIVewControllerExt.swift
//  ProgrammerChat
//
//  Created by Nathaniel Burciaga on 4/27/18.
//  Copyright © 2018 Nathaniel Burciaga. All rights reserved.
//

import UIKit

extension UIViewController {
    
    // Cool transition for View Controllers
    func presentDetail(_ viewControllerToPresent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        present(viewControllerToPresent, animated: false, completion: nil)
    }
    
    
    func dismissDetail() {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromLeft
        
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
    }
    
    
    
}

