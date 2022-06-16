//
//  ContraceptionViewController.swift
//  ROE
//
//  Created by Ana Huesa on 6/16/22.
//

import UIKit

class ContraceptionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var pill: UILabel!
    @IBOutlet weak var pillButton: UIButton!
    @IBAction func pillLearn(_ sender: UIButton) {
        if pill.text == "" {
            pill.text = "Also called “the pill,” combined oral contraceptives contain the hormones estrogen and progestin. It is prescribed by a doctor. A pill is taken at the same time each day. If you are older than 35 years and smoke, have a history of blood clots or breast cancer, your doctor may advise you not to take the pill. Typical use failure rate: 7%."
            pillButton.setTitle("Hide", for: .normal)
        } else {
            pill.text = ""
            pillButton.setTitle("Learn more", for: .normal)
        }
    }
    
    @IBOutlet weak var miniPill: UILabel!
    @IBOutlet weak var miniPillButton: UIButton!
    @IBAction func miniPillLearn(_ sender: Any) {
        if miniPill.text == "" {
            miniPill.text = "hello"
            miniPillButton.setTitle("Hide", for: .normal)
        } else {
            miniPill.text = ""
            miniPillButton.setTitle("Learn more", for: .normal)
        }
    }
    
    @IBOutlet weak var implant: UILabel!
    @IBOutlet weak var implantButton: UIButton!
    @IBAction func implantLearn(_ sender: Any) {
        if implant.text == "" {
            implant.text = "hello"
            implantButton.setTitle("Hide", for: .normal)
        } else {
            implant.text = ""
            implantButton.setTitle("Learn more", for: .normal)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
