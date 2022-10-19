//
//  InfoViewController.swift
//  Persons
//
//  Created by Vyacheslav on 19.10.2022.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = person.fullName
        emailLabel.text = person.email
        phoneNumberLabel.text = person.phoneNumber
        }


}
