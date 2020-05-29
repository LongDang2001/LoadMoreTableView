//
//  SecondViewController.swift
//  LoadMoreTableView
//
//  Created by admin on 2/3/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
    var arrayNumber: [String] = ["mot","hai","ba"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myTableView.dataSource = self
        myTableView.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayNumber.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IDCell", for: indexPath)
        cell.textLabel?.text = arrayNumber[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let lassCell = arrayNumber.count - 1
        if lassCell == indexPath.row {
            loadMode()
        }
    }
    func loadMode() {
        arrayNumber.insert("longdz", at: 2)
        myTableView.reloadData()
    }
    

    

}
