//
//  TableViewController.swift
//  injection dependency
//
//  Created by Caio Sanchez Christino on 28/11/17.
//  Copyright © 2017 Caio Sanchez Christino. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, Injectable {
    var data: [[String]]!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionData = data[0]
        return sectionData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstCell", for: indexPath)
        let itemData = data[indexPath.section][indexPath.row]
        cell.textLabel?.text = itemData
        return cell
    }
}
