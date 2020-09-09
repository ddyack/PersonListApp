//
//  DetailsViewController.swift
//  PersonListApp
//
//  Created by ddyack on 08.09.2020.
//  Copyright © 2020 ddyack. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
}
