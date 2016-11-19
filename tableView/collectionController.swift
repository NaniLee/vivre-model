//
//  collectionController.swift
//  tableView
//
//  Created by NaniLee on 11/15/16.
//  Copyright © 2016 NaniLee. All rights reserved.
//

import UIKit

class collectionController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    var image1 = [#imageLiteral(resourceName: "table_cafe"), #imageLiteral(resourceName: "children_children"), #imageLiteral(resourceName: "exit_spectaclesmen"), #imageLiteral(resourceName: "hotel_hotel1"), #imageLiteral(resourceName: "news_outings"), #imageLiteral(resourceName: "table_earsandtail"), #imageLiteral(resourceName: "hotel_waleshotel"), #imageLiteral(resourceName: "exit_dogs"), #imageLiteral(resourceName: "children_mouilette"), #imageLiteral(resourceName: "news_tower"), #imageLiteral(resourceName: "table_generalcounter"), #imageLiteral(resourceName: "shows_shop1")]

    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image1.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath) as! CCell
        cell.imgC.image = image1[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 117 , height: 150)
    }
    }
