//
//  ToDoTableViewController.swift
//  ToDo List
//
//  Created by Chloé Mezouar on 28/11/2018.
//  Copyright © 2018 Chloé Mezouar. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    var toDos : [ToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toDos = createToDos()
    }
    
    func createToDos() -> [ToDo]{
        
        let eggs = ToDo()
        eggs.name = "Buy Eggs"
        eggs.isImportant = true
        
        let dog = ToDo()
        dog.name = "Walk the dog"
        
        let cheese = ToDo()
        cheese.name = "Eat Cheese"
        
        return [eggs, dog, cheese]
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
  
}
