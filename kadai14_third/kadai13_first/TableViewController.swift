//
//  TableViewController.swift
//  kadai13_first
//
//  Created by 白鳥貢 on 2020/08/25.
//  Copyright © 2020 mitsugu.shiratori. All rights reserved.

import UIKit

class TableViewController: UITableViewController {
    
    private var fruits:[String] = ["りんご","みかん","バナナ","パイナップル"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return fruits.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath) as! TableViewCell
        
        if indexPath.row % 2 == 1 {
            cell.checkView.image = UIImage(named: "check")
        }else{
            cell.checkView.image = nil
        }
        
        cell.label.text = fruits[indexPath.row]
        return cell
    }
    
    @IBAction func cancel(segue:UIStoryboardSegue){
    }
    
    @IBAction func save(segue:UIStoryboardSegue){
        let addViewController = segue.source as! AddViewController
        fruits.append(addViewController.textField.text!)
        tableView.reloadData()
        
    }
    
}
