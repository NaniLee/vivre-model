//
//  TController2.swift
//  tableView
//
//  Created by NaniLee on 11/15/16.
//  Copyright © 2016 NaniLee. All rights reserved.
//

import UIKit

class TController2: UIViewController, UITableViewDataSource {
    var image2 = [#imageLiteral(resourceName: "table_cafe"), #imageLiteral(resourceName: "children_children"), #imageLiteral(resourceName: "exit_spectaclesmen"), #imageLiteral(resourceName: "hotel_hotel1"), #imageLiteral(resourceName: "news_outings"), #imageLiteral(resourceName: "table_earsandtail"), #imageLiteral(resourceName: "hotel_waleshotel"), #imageLiteral(resourceName: "exit_dogs"), #imageLiteral(resourceName: "children_mouilette"), #imageLiteral(resourceName: "news_tower"), #imageLiteral(resourceName: "table_generalcounter"), #imageLiteral(resourceName: "shows_shop1")]
    var event = ["fafa","fdadf","dfadf","fdafd","fdadf","fda","dfad","fdadf","fdadf","gfsg","gfs","gfsfg"]
    var places = ["0 places","1 places","2 places","3 places","4 places","5 places","6 places","7 places","8 places","9 places","10 places","11 places"]
    override func viewDidLoad() {
        super.viewDidLoad()
          
    }
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 12
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellid1", for: indexPath) as! TCell2
            cell.imgT.image = image2[indexPath.row]
            cell.labTH.text = event[indexPath.row]
            cell.labTB.text = places[indexPath.row]
            return cell
            
        }
}




