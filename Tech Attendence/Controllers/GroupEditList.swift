//
//  GroupEditList.swift
//  Tech Attendence
//
//  Created by Johnny Waity on 1/16/18.
//  Copyright © 2018 Johnny Waity. All rights reserved.
//

import UIKit

class GroupEditList: UITableViewController {

    
    var peopleList:[String] = ["Mem", "Mem2", "Mem 3"]
    
    let cellId = "DeleteCell"
    
    //let editBtn = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(startEditing))
    //let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: nil)
    //let addBtn = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: nil)
    //let saveBtn = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveEditing))
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(DeleteCell.self, forCellReuseIdentifier: cellId)
        tableView.setEditing(false, animated: true)
        let editBtn = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(startEditing))
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneObserving))
        navigationItem.setLeftBarButton(editBtn, animated: true)
        navigationItem.setRightBarButton(doneBtn, animated: true)
        
    }

    @objc func startEditing(){
        print("Started Editing")
        tableView.setEditing(true, animated: true)
        let addBtn = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addMember))
        let saveBtn = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveEditing))
        navigationItem.setLeftBarButton(saveBtn, animated: true)
        navigationItem.setRightBarButton(addBtn, animated: true)
        
    }
    
    @objc func saveEditing(){
        tableView.setEditing(false, animated: true)
        let editBtn = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(startEditing))
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneObserving))
        navigationItem.setLeftBarButton(editBtn, animated: true)
        navigationItem.setRightBarButton(doneBtn, animated: true)
    }
    
    @objc func addMember(){
        
    }
    @objc func doneObserving(){
        dismiss(animated: true, completion: nil)
    
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return peopleList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as! DeleteCell
        cell.textLabel?.text = peopleList[indexPath.row]
        cell.setUpCell()
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            print("Deleted")
            self.peopleList.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }

    
}
