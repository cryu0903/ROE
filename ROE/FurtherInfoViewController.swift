//
//  FurtherInfoViewController.swift
//  ROE
//
//  Created by Ana Huesa on 6/15/22.
//

import UIKit

class FurtherInfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func goToClinic(_ sender: UIButton) {
        performSegue(withIdentifier: "goToInClinic", sender: self)
    }
    
    @IBAction func goToPill(_ sender: UIButton) {
        performSegue(withIdentifier: "goToPill", sender: self)
    }
    

}
