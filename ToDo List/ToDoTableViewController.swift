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
        return toDos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let toDo = toDos[indexPath.row]
        if (toDo.isImportant == true){
            cell.textLabel?.text = "!!" + toDo.name
        }else{
            cell.textLabel?.text = toDo.name
        }
        return cell
    }
  
}
