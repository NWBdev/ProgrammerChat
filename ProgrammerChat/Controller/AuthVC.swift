//
//  AuthVC.swift
//  ProgrammerChat
//
//  Created by Nathaniel Burciaga on 3/26/18.
//  Copyright © 2018 Nathaniel Burciaga. All rights reserved.
//

import UIKit
import Firebase

class AuthVC: UIViewController {

    //Outlets
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if Auth.auth().currentUser != nil {
            dismiss(animated: true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //Actions
    @IBAction func signInWithEmailBtnWasPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    
    @IBAction func googleSignInBtnWasPressed(_ sender: Any) {
    }
    @IBAction func facebookSignInBtnWasPressed(_ sender: Any) {
    }
    
}
