//
//  CreateGroupsVC.swift
//  ProgrammerChat
//
//  Created by Nathaniel Burciaga on 4/11/18.
//  Copyright © 2018 Nathaniel Burciaga. All rights reserved.
//

import UIKit

class CreateGroupsVC: UIViewController {

    //Outlets
    @IBOutlet weak var titleTxtField: insetTextField!
    @IBOutlet weak var descriptionTxtField: insetTextField!
    @IBOutlet weak var emailSearchTxtField: insetTextField!
    @IBOutlet weak var doneBtn: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var groupMemberLbl: UILabel!
    
    
    //variables
    var emailArray = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        emailSearchTxtField.delegate = self as? UITextFieldDelegate
        emailSearchTxtField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }

    
    //for more users recommend changing to binary search
   @objc func textFieldDidChange() {
        if emailSearchTxtField.text == "" {
            emailArray = []
           tableView.reloadData()
        } else {
            DataService.instance.getEmail(forSearchQuery: emailSearchTxtField.text!, handler: { (returnedEmailArray) in
                self.emailArray = returnedEmailArray
                self.tableView.reloadData()
            })
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Actions
    @IBAction func closedBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func doneBtnWasPressed(_ sender: Any) {
    }
}

extension  CreateGroupsVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emailArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "userCell") as? UserCell else { return UITableViewCell() }
        let profileImage = UIImage(named: "defaultProfileImage")
        cell.configureCell(profileImg: profileImage!, email: emailArray[indexPath.row], isSelected: true)
        return cell
    }
}

extension CreateGroupsVC: UITextViewDelegate {
    
}
