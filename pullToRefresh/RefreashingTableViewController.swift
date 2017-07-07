//
//  RefreashingTableViewController.swift
//  pullToRefresh
//
//  Created by idea_liujl on 17/7/7.
//  Copyright © 2017年 idea_liujl. All rights reserved.
//

import UIKit

private let kRef:CGFloat = 200

class RefreashingTableViewController: UITableViewController {
    
    private var refreshVIew:RefreshView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        refreshVIew = RefreshView(frame: CGRect(x: 0, y: -kRef, width: CGRectGetWidth(view.bounds), height: kRef), scrollView:tableView)
        view.insertSubview(refreshVIew, atIndex: 0)
        
    }

    override func scrollViewDidScroll(scrollView: UIScrollView) {
        refreshVIew.scrollViewDidScroll(scrollView)
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
