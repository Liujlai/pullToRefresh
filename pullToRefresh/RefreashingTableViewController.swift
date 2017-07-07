//
//  RefreashingTableViewController.swift
//  pullToRefresh
//
//  Created by idea_liujl on 17/7/7.
//  Copyright © 2017年 idea_liujl. All rights reserved.
//

import UIKit

class RefreashingTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

  
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 20
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)

        // Configure the cell...
        
        cell.textLabel!.text = "第\(indexPath.row) 行"

        return cell
    }
    

}
