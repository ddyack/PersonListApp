//
//  PersonListViewController.swift
//  PersonListApp
//
//  Created by ddyack on 08.09.2020.
//  Copyright © 2020 ddyack. All rights reserved.
//

import UIKit

class PersonListViewController: UITableViewController {

    var personList = Person.getPersonList()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let fullPersonVC = tabBarController?.viewControllers?.last as? FullPersonListViewController else {return}
        fullPersonVC.fullPersonList = personList
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personName", for: indexPath)
        
        let person = personList[indexPath.row]
        cell.textLabel?.text = person.fullName
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? DetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        detailsVC.person = personList[indexPath.row]
        
    }
    
    

}
