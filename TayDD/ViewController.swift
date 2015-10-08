//
//  ViewController.swift
//  TayDD
//
//  Created by Charlie Buckets on 10/5/15.
//  Copyright © 2015 ChalieBuckets. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblSuccess: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touchDee(sender: AnyObject) {
        lblSuccess.text = "Success"
    }

    @IBAction func touchD(sender: AnyObject) {
        lblSuccess.text = "I luv Swift"
    }
    
    @IBAction func touchTay(sender: AnyObject) {
        lblSuccess.text = "I hate Swift"
    }
}

