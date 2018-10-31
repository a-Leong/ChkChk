//
//  ViewController.swift
//  ChkChk
//
//  Created by Alex Leong on 10/30/18.
//  Copyright © 2018 Alex Leong. All rights reserved.
//

import UIKit

class ChkChkViewController: UITableViewController {
    

    
    let itemArray = ["Buy eggs", "Buy white tea", "Buy brown paint", "Buy a new rug"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //let cellTapped = UIGestureRecognizer(target: self, action: #selector(tableViewCellTapped))
        
        //ToDoItemCell.addGestureRecognizer(cellTapped)
        
    }
    
    //MARK - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
                
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    


}

