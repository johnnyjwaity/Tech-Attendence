//
//  DeleteCell.swift
//  Tech Attendence
//
//  Created by Johnny Waity on 1/16/18.
//  Copyright © 2018 Johnny Waity. All rights reserved.
//

import UIKit

class DeleteCell: UITableViewCell {

//    let enableSwitch:UISwitch = {
//        let sw = UISwitch()
//
//        sw.translatesAutoresizingMaskIntoConstraints = false
//        return sw
//    }()
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setUpCell()
    }
    
    func setUpCell(){
        print("Setting")
        
        //self.heightAnchor.constraint(equalToConstant: 500)
        
//        self.addSubview(enableSwitch)
//        enableSwitch.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -5).isActive = true
//        enableSwitch.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 5).isActive = true
//        enableSwitch.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
//        enableSwitch.widthAnchor.constraint(equalToConstant: 50).isActive = true
    }

}
