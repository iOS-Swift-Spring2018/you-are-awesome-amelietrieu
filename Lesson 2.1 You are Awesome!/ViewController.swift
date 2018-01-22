//
//  ViewController.swift
//  Lesson 2.1 You are Awesome!
//
//  Created by Amelie Trieu on 1/22/18.
//  Copyright © 2018 Amelie Trieu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    // Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        messageLabel.text = "You Are Awesome!"
        
    }
    


}

