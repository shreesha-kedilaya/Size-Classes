

//
//  LayoutViewController.swift
//  Size Classes
//
//  Created by Shreesha on 22/04/16.
//  Copyright © 2016 YML. All rights reserved.
//

import UIKit

class LayoutViewController: UIViewController {

    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var blueView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        greenView.hidden = true
        blueView.hidden = false
    }
    @IBAction func buttonAction(sender: AnyObject) {
        greenView.hidden = false
        blueView.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func traitCollectionDidChange(previousTraitCollection: UITraitCollection?) {
        greenView.hidden = false
        blueView.hidden = true
    }

    override func willTransitionToTraitCollection(newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        greenView.hidden = false
        blueView.hidden = true
    }
}
