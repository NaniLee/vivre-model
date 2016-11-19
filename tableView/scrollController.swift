//
//  scrollControllerViewController.swift
//  tableView
//
//  Created by NaniLee on 11/15/16.
//  Copyright © 2016 NaniLee. All rights reserved.
//

import UIKit

class scrollController: UIViewController {

    @IBOutlet var segmented: UISegmentedControl!
    @IBOutlet var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
      
       let vc1 = (self.storyboard?.instantiateViewController(withIdentifier: "id1"))! as UIViewController
        self.addChildViewController(vc1)
        self.scrollView.addSubview(vc1.view)
        vc1.didMove(toParentViewController: self)
        
        let vc2 = (self.storyboard?.instantiateViewController(withIdentifier: "id2"))! as UIViewController
        self.addChildViewController(vc2)
        self.scrollView.addSubview(vc2.view)
        vc2.didMove(toParentViewController: self)
        
        var frame2 = vc2.view.frame
        frame2.origin.x = self.view.frame.width
        vc2.view.frame = frame2
        
        let vc3 = (self.storyboard?.instantiateViewController(withIdentifier: "id3"))! as UIViewController
        self.addChildViewController(vc3)
        self.scrollView.addSubview(vc3.view)
        vc3.didMove(toParentViewController: self)
        
        var frame3 = vc3.view.frame
        frame3.origin.x = 2 * self.view.frame.width
        vc3.view.frame = frame3
        
        self.scrollView.contentSize = CGSize(width: (self.view.frame.width) * 3 , height: (self.view.frame.height))
       
    }
    

}
