//
//  AbortionInfoViewController.swift
//  ROE
//
//  Created by Ana Huesa on 6/15/22.
//

import UIKit

class AbortionInfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToRoe(_ sender: UIButton) {
        performSegue(withIdentifier: "goToRoe", sender: self)
    }
    
    
    @IBAction func goToFurther(_ sender: UIButton) {
        performSegue(withIdentifier: "goToFurtherInfo", sender: self)
    }
    

}
