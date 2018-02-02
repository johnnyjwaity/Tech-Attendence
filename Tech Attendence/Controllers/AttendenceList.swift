//
//  AttendenceList.swift
//  Tech Attendence
//
//  Created by Johnny Waity on 1/16/18.
//  Copyright © 2018 Johnny Waity. All rights reserved.
//

import UIKit
import MessageUI


class AttendenceList: UITableViewController, MFMailComposeViewControllerDelegate {

    let members:[String] = ["Mem 1", "Mem 2", "Mem 3"]
    
    var str:String? = nil
    
    let resusableCell = "Cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(MemberCell.self, forCellReuseIdentifier: resusableCell)
        navigationItem.title = "People"
        let barRight = UIBarButtonItem(title: "Send", style: UIBarButtonItemStyle.plain, target: self, action: #selector(sendMail))
        navigationItem.setRightBarButton(barRight, animated: true)
        let barLeft = UIBarButtonItem(title: "Cancel", style: UIBarButtonItemStyle.plain, target: self, action: #selector(closeView))
        navigationItem.setLeftBarButton(barLeft, animated: true)
        

        
    }

    
    @objc func sendMail(){
        if !MFMailComposeViewController.canSendMail() {
            print("Mail services are not available")
            return
        }
        
        let compose = MFMailComposeViewController()
        compose.mailComposeDelegate = self
        compose.setToRecipients(["pkim@d211.org"])
        compose.setSubject("Tech Club Attendence For: ")
        compose.setMessageBody("Message", isHTML: false)
        present(compose, animated: true, completion: nil)
    }
    

    @objc func closeView(){
        dismiss(animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return members.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: resusableCell) as! MemberCell
        cell.textLabel?.text = members[indexPath.row]
        
        cell.setUpCell()
        
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true) {
            self.closeView()
        }
    }
    
    
    
}
