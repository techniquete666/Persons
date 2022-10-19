//
//  PersonsListViewController.swift
//  Persons
//
//  Created by Vyacheslav on 19.10.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {

    private var personsList = Person.getPersonsList()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        let person = personsList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let infoAboutVC = segue.destination as? InfoViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        infoAboutVC?.person = personsList[indexPath.row]
    }
}

