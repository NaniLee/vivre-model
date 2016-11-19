//
//  ViewController.swift
//  tableView
//
//  Created by NaniLee on 11/15/16.
//  Copyright © 2016 NaniLee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var nani = "thats my"
var name = ["fasdf","fad","fadf","fadsf","fdaf","fadf","fadf","fadfa","fadf","fadsfa","fadf","fdaf","fadf"]
    var images = [#imageLiteral(resourceName: "table_cafe"), #imageLiteral(resourceName: "children_children"), #imageLiteral(resourceName: "exit_spectaclesmen"), #imageLiteral(resourceName: "hotel_hotel1"), #imageLiteral(resourceName: "news_outings"), #imageLiteral(resourceName: "table_earsandtail"), #imageLiteral(resourceName: "hotel_waleshotel"), #imageLiteral(resourceName: "exit_dogs"), #imageLiteral(resourceName: "children_mouilette"), #imageLiteral(resourceName: "news_tower"), #imageLiteral(resourceName: "table_generalcounter"), #imageLiteral(resourceName: "shows_shop1")]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid", for: indexPath) as! TCell1
        cell.img.image = images[indexPath.row]
        return cell
    }
}

