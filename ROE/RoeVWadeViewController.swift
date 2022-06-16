//
//  RoeVWadeViewController.swift
//  ROE
//
//  Created by Ana Huesa on 6/15/22.
//

import UIKit
import WebKit

class RoeVWadeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    @IBAction func goToState(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://www.plannedparenthoodaction.org/abortion-access-tool/US")! as URL,options: [:], completionHandler:nil )
    }
    
    
    

}
