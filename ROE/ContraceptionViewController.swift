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
            pill.text = "Combined oral contraceptives contain the hormones estrogen and progestin and are prescribed by a doctor. A pill must be taken at the same time each day. If you are older than 35 years and smoke, have a history of blood clots or breast cancer, your doctor may advise you not to take the pill. Typical use failure rate: 7%."
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
            miniPill.text = "The progestin-only pill only has one hormone, progestin, instead of both estrogen and progestin. It is also prescribed by a doctor and taken at the same time each day. It may be a good option for women who can’t take estrogen. Typical use failure rate: 7%."
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
            implant.text = "The implant is a single, thin rod inserted under the skin of the upper arm. The rod contains progestin that is released into the body over 3 years. Typical use failure rate: 0.1%."
            implantButton.setTitle("Hide", for: .normal)
        } else {
            implant.text = ""
            implantButton.setTitle("Learn more", for: .normal)
        }
    }
    
    @IBOutlet weak var injection: UILabel!
    @IBOutlet weak var injectionButton: UIButton!
    @IBAction func injectionLearn(_ sender: Any) {
        if injection.text == "" {
            injection.text = "Shots of the hormone progestin are administered every three months by a doctor into the buttocks or arm. Typical use failure rate: 4%."
            injectionButton.setTitle("Hide", for: .normal)
        } else {
            injection.text = ""
            injectionButton.setTitle("Learn more", for: .normal)
        }
    }
    
    @IBOutlet weak var IUS: UILabel!
    @IBOutlet weak var IUSButton: UIButton!
    @IBAction func IUSLearn(_ sender: Any) {
        if IUS.text == "" {
            IUS.text = "The IUS is a small T-shaped device placed inside the uterus by a doctor. It releases a small amount of progestin and stays in the uterus for up to 3 to 6 years, depending on the device. Typical use failure rate: 0.1-0.4%."
            IUSButton.setTitle("Hide", for: .normal)
        } else {
            IUS.text = ""
            IUSButton.setTitle("Learn more", for: .normal)
        }
    }
    
    @IBOutlet weak var ring: UILabel!
    @IBOutlet weak var ringButton: UIButton!
    @IBAction func ringLearn(_ sender: Any) {
        if ring.text == "" {
            ring.text = "The ring releases the hormones progestin and estrogen. The user places the ring inside the vagina. It is worn for three weeks, taken out during the week of the period, and replaced. Typical use failure rate: 7%."
            ringButton.setTitle("Hide", for: .normal)
        } else {
            ring.text = ""
            ringButton.setTitle("Learn more", for: .normal)
        }
    }
    
    @IBOutlet weak var patch: UILabel!
    @IBOutlet weak var patchButton: UIButton!
    @IBAction func patchLearn(_ sender: Any) {
        if patch.text == "" {
            patch.text = "This skin patch is worn on the lower abdomen, buttocks, or upper body and releases hormones progestin and estrogen into the bloodstream. The patch is replaced weekly for three weeks and not worn during the week of the period. Typical use failure rate: 7%."
            patchButton.setTitle("Hide", for: .normal)
        } else {
            patch.text = ""
            patchButton.setTitle("Learn more", for: .normal)
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
