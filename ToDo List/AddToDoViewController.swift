//
//  AddToDoViewController.swift
//  ToDo List
//
//  Created by Chloé Mezouar on 28/11/2018.
//  Copyright © 2018 Chloé Mezouar. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {

    var previousViewController = ToDoTableViewController() 
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButtonClicked(_ sender: Any) {
        let toDo = ToDo()
        toDo.name = titleTextField.text!
        toDo.isImportant = importantSwitch.isOn
        previousViewController.toDos.append(toDo)
        previousViewController.tableView.reloadData()
        
        //when the button is clicked, move back to the previous view
        navigationController?.popViewController(animated: true)
    }
}
