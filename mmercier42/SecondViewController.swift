//
//  SecondViewController.swift
//  mmercier42
//
//  Created by swift on 20/12/14.
//  Copyright (c) 2014 Mike Mercier. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tableView: UITableView!
    var items: [String] = ["MHR", "Terrain de Rugby", "Boutique MHR"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        cell.textLabel?.text = self.items[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        println("You selected cell #\(indexPath.row)!")
    }
}