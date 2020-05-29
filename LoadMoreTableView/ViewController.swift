//
//  ViewController.swift
//  LoadMoreTableView
//
//  Created by admin on 2/1/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
    var arrayInt: [String] = ["mot","hai","ba"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayInt.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IDCell", for: indexPath)
        cell.textLabel?.text = String(arrayInt[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let lassCell = arrayInt.count - 1
        if lassCell == indexPath.row {
            loadMore()
        }
    }
    func loadMore() {
        arrayInt.append("longDz")
        myTableView.reloadData()
    }


}

