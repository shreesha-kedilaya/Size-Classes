//
//  TableViewController.swift
//  Size Classes
//
//  Created by Shreesha on 19/04/16.
//  Copyright © 2016 YML. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {


    let rule1 = UITraitCollection(traitsFromCollections: [UITraitCollection(horizontalSizeClass : .Regular), UITraitCollection(verticalSizeClass : .Regular)]) //iPad

    let rule2 = UITraitCollection(traitsFromCollections: [UITraitCollection(horizontalSizeClass : .Regular), UITraitCollection(verticalSizeClass : .Compact)]) //iPhone 6plus L.S

    let rule3 = UITraitCollection(traitsFromCollections: [UITraitCollection(horizontalSizeClass: .Compact),UITraitCollection(verticalSizeClass: .Compact)]) // iPhone 4, 4s, 5, 5c, 5s, 6, 6s L.S

    let rule4 = UITraitCollection(traitsFromCollections: [UITraitCollection(horizontalSizeClass : .Compact), UITraitCollection(verticalSizeClass : .Regular)])// verticalSizeClass = Any :- Any iPhone portrait

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = UITableViewCellSeparatorStyle.SingleLine
        tableView.separatorColor = UIColor.whiteColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
//MARK :-UITableViewDataSource, UITableViewDelegate
extension TableViewController : UITableViewDataSource, UITableViewDelegate {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(TableViewCell.kReuseIdentifier, forIndexPath: indexPath) as! TableViewCell
        
        return cell
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {


        // Trait collection #1
        if tableView.traitCollection.containsTraitsInCollection(rule1) {
            return 150
        } else if tableView.traitCollection.containsTraitsInCollection(rule2) {
            return 170
        } else if tableView.traitCollection.containsTraitsInCollection(rule3) {
            return 480
        } else if tableView.traitCollection.containsTraitsInCollection(rule4){
            return 200
        } else {
            return 0
        }
//        print("\(tableView.traitCollection.tupleValue.2)")

       //  Trait collection #2
//        switch tableView.traitCollection.tupleValue {
//        case (_,_, horizontalSizeClass : .Regular, verticalSizeClass : .Regular):
//            return 150
//            
//        case (_, _, horizontalSizeClass: .Regular, verticalSizeClass: .Compact):
//            return 170
//
//        case (_, _, horizontalSizeClass: .Compact, verticalSizeClass: .Compact):
//            return 200
//
//        case (_, _, horizontalSizeClass: .Compact, verticalSizeClass: .Regular):
//            return 470
//
//        default:
//            return 0
//        }

        // Trait collection #3
//
//        let rowHeight = TraitVariable<CGFloat>(traitEnvironment: tableView, definition: [(UITraitCollection(traitsFromCollections: [UITraitCollection(horizontalSizeClass : .Regular), UITraitCollection(verticalSizeClass : .Regular)]) , 150) ,(UITraitCollection(traitsFromCollections: [UITraitCollection(horizontalSizeClass : .Regular), UITraitCollection(verticalSizeClass : .Compact)]) ,170), (UITraitCollection(traitsFromCollections: [UITraitCollection(horizontalSizeClass : .Compact)]) , 480) ,(UITraitCollection(traitsFromCollections: [UITraitCollection(horizontalSizeClass: .Compact),UITraitCollection(verticalSizeClass: .Compact)]) , 200)] , defaultValue : 0)
//
//        return rowHeight.value
    }
}

//MARK :- UITraitEnvironment
extension TableViewController {
    override func traitCollectionDidChange(previousTraitCollection: UITraitCollection?) {
        tableView.reloadData()
    }
    override func willTransitionToTraitCollection(newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        tableView.reloadData()

        // Animations doing with coordinator:-
        coordinator.animateAlongsideTransition({(context)->Void in

            }, completion: { (context) -> Void in
                //didChangetoInterfaceOrientation :
        })
    }
}

