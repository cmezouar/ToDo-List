//
//  CompleteToDoViewController.swift
//  ToDo List
//
//  Created by Chloé Mezouar on 30/11/2018.
//  Copyright © 2018 Chloé Mezouar. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    
    var previousViewController = ToDoTableViewController()
    var selectedToDo = ToDo() 
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selectedToDo.name
    }
    
    @IBAction func completeButtonClicked(_ sender: Any) {
        var index = 0
        for toDo in previousViewController.toDos {
            if toDo.name == selectedToDo.name {
                previousViewController.toDos.remove(at: index)
                previousViewController.tableView.reloadData()
                navigationController?.popViewController(animated: true)
                break
            }
            index += 1
        }
    }
    
}
