//
//  ToDoTableViewController.swift
//  ToDoList
//
//  Created by Robert Speer-Zisook (student HH) on 2/25/20.
//  Copyright © 2020 Noah Voelkel (student HH). All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController, ToDoCellDelegate {
    var todos = [ToDo]()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt
    indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:
        "ToDoCellIdentifier", for: indexPath)
        
        let todo = todos[indexPath.row]
        cell.textLabel?.text = todo.title
        return cell
    }
}
