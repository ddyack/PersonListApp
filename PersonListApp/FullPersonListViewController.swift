//
//  FullPersonListViewController.swift
//  PersonListApp
//
//  Created by ddyack on 09.09.2020.
//  Copyright © 2020 ddyack. All rights reserved.
//

import UIKit



class FullPersonListViewController: UITableViewController {
    
    var fullPersonList: [Person] = []
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        fullPersonList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        fullPersonList[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detail", for: indexPath)
        
        let person = fullPersonList[indexPath.section]
        switch indexPath.row {
        case 0:
            cell.imageView?.image = UIImage(systemName: "phone")
            cell.textLabel?.text = person.phone
        default:
            cell.imageView?.image = UIImage(systemName: "envelope")
            cell.textLabel?.text = person.email
        }
        
        return cell
    }
    
}
