//
//  ViewController.swift
//  ROE
//
//  Created by Claire R. on 6/14/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func goToScreenOne(_ sender: UIButton) {
        performSegue(withIdentifier: "goToScreenOne", sender: self)
    }
    
    @IBAction func goToScreenTwo(_ sender: UIButton) {
        performSegue(withIdentifier: "goToScreenTwo", sender: self)
    }
    
    @IBAction func goToScreenThree(_ sender: UIButton) {
        performSegue(withIdentifier: "goToScreenThree", sender: self)
    }
    
    @IBAction func goToScreenFour(_ sender: UIButton) {
        performSegue(withIdentifier: "goToScreenFour", sender: self)
    }
    
    

}

