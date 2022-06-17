//
//  NonhormonalViewController.swift
//  ROE
//
//  Created by Ana Huesa on 6/17/22.
//

import UIKit

class NonhormonalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var IUD: UILabel!
    @IBOutlet weak var IUDButton: UIButton!
    @IBAction func IUDLearn(_ sender: Any) {
        if IUD.text == "" {
            IUD.text = "The Copper IUD is a small device shaped in the form of a “T” that releases copper ions making the uterus less sperm friendly. Your doctor places it inside the uterus, and it can last up to 10 years. It can also serve as emergency contraception if inserted within 5 days after unprotected sex. Typical use failure rate: 0.8%"
            IUDButton.setTitle("Hide", for: .normal)
        } else {
            IUD.text = ""
            IUDButton.setTitle("Learn more", for: .normal)
        }
    }
    
    @IBOutlet weak var maleCondom: UILabel!
    @IBOutlet weak var maleCondomButton: UIButton!
    @IBAction func maleCondomLearn(_ sender: Any) {
        if maleCondom.text == "" {
            maleCondom.text = "A male condom keeps sperm from getting into a woman’s body. Additionally latex (and some new synthetic) condoms, protect against HIV and other STDs. “Natural” or “lambskin” condoms also help prevent pregnancy, but may not provide protection against STDs. Condoms can only be used once. You can buy condoms and water-based lubricants at a drug store. Do not use oil-based lubricants, as they weaken the condom, causing it to tear or break. Typical use failure rate: 13%."
            maleCondomButton.setTitle("Hide", for: .normal)
        } else {
            maleCondom.text = ""
            maleCondomButton.setTitle("Learn more", for: .normal)
        }
    }
    
    @IBOutlet weak var femaleCondom: UILabel!
    @IBOutlet weak var femaleCondomButton: UIButton!
    @IBAction func femaleCondomLearnMore(_ sender: Any) {
        if femaleCondom.text == "" {
            femaleCondom.text = "The female condom helps keeps sperm from getting into the body, and it may also help prevent STDs. It is packaged with a lubricant and is available at drug stores. It can be inserted up to eight hours before sexual intercourse. Typical use failure rate: 21%."
            femaleCondomButton.setTitle("Hide", for: .normal)
        } else {
            femaleCondom.text = ""
            femaleCondomButton.setTitle("Learn more", for: .normal)
        }
    }
    
    @IBOutlet weak var diaphragm: UILabel!
    @IBOutlet weak var diaphragmButton: UIButton!
    @IBAction func diaphragmLearn(_ sender: Any) {
        if diaphragm.text == "" {
            diaphragm.text = "Each of these barrier methods are placed inside the vagina to cover the cervix to block sperm. The diaphragm is shaped like a shallow cup. The cervical cap is a thimble-shaped cup. Before sexual intercourse, you insert them with spermicide to block or kill sperm. Visit your doctor for a proper fitting because diaphragms and cervical caps come in different sizes. Typical use failure rate for the diaphragm: 17%."
            diaphragmButton.setTitle("Hide", for: .normal)
        } else {
            diaphragm.text = ""
            diaphragmButton.setTitle("Learn more", for: .normal)
        }
    }
    
    @IBOutlet weak var sponge: UILabel!
    @IBOutlet weak var spongeButton: UIButton!
    @IBAction func spongeLearn(_ sender: Any) {
        if sponge.text == "" {
            sponge.text = "The contraceptive sponge contains spermicide and is placed in the vagina where it fits over the cervix. The sponge works for up to 24 hours, and must be left in the vagina for at least 6 hours after the last act of intercourse, at which time it is removed and discarded. Typical use failure rate: 14% for women who have never had a baby and 27% for women who have had a baby."
            spongeButton.setTitle("Hide", for: .normal)
        } else {
            sponge.text = ""
            spongeButton.setTitle("Learn more", for: .normal)
        }
    }
    
}
