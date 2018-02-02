//
//  ViewController.swift
//  Tech Attendence
//
//  Created by Johnny Waity on 1/16/18.
//  Copyright © 2018 Johnny Waity. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    let takeAttendenceButton:UIButton = {
        let btn = UIButton(type: UIButtonType.system)
        btn.setTitle("Take Attendence", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.layer.cornerRadius = 8
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        btn.backgroundColor = UIColor.blue
        btn.addTarget(self, action: #selector(displayList), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
        
        
    }

    
    func setupView(){
        view.backgroundColor = UIColor.white
        
        view.addSubview(takeAttendenceButton)
        takeAttendenceButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        takeAttendenceButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        takeAttendenceButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20).isActive = true
        takeAttendenceButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
    }
    
    @objc func displayList(){
//        let cont = UINavigationController(rootViewController: GroupEditList())
//        present(cont, animated: true, completion: nil)
        let cont = UINavigationController(rootViewController: AttendenceList())
        present(cont, animated: true, completion: nil)
    }

}

