//
//  ResourcesViewController.swift
//  ROE
//
//  Created by Ana Huesa on 6/15/22.
//

import UIKit

class ResourcesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func plannedParenthoodPetition(sender: AnyObject) {
        UIApplication.shared.open(URL(string: "https://www.weareplannedparenthood.org/Rz9pIXDqUk-c0wl1RoiKrA2?sourceid=1010854")!, options: [:], completionHandler: nil)
    }
    
    @IBAction func bansOffOurBodies(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.plannedparenthoodaction.org/rightfully-ours/bans-off-our-bodies")!, options: [:], completionHandler: nil)
    }

    @IBAction func donate(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.weareplannedparenthood.org/onlineactions/_6-a0l5l-UG4fKr_xPbvWg2?sourceid=1000063&_ga=2.189157547.161813063.1651259937-383956024.1645022821&mrasn=832604.1034984.4PH1ButI")!, options: [:], completionHandler: nil)
    }
    
    @IBAction func chat(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.plannedparenthood.org/online-tools/chat")!, options: [:], completionHandler: nil)
    }
    
}
