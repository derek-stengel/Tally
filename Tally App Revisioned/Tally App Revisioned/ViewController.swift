//
//  ViewController.swift
//  Tally App Revisioned
//
//  Created by Derek Stengel on 2/26/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var intervalDisplayLabel: UILabel!
    @IBOutlet weak var mainLabel: UILabel!
    
    var interval = 0
    var mainNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func increaseInterval(_ sender: UIButton) {
        interval += 1
        updateIntervalDisplayLabel()
    }
    
    @IBAction func decreaseInterval(_ sender: UIButton) {
        interval -= 1
        updateIntervalDisplayLabel()
    }
    
    @IBAction func countButton(_ sender: UIButton) {
        mainNumber += interval
        mainLabel.text = String(mainNumber)
    }
    
    func updateIntervalDisplayLabel() {
        intervalDisplayLabel.text = String(interval)
    }
    
    


}

