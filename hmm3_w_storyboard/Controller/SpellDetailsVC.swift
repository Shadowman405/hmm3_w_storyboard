//
//  SpellDetailsVC.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 8.08.22.
//

import UIKit

class SpellDetailsVC: UIViewController {
    
    @IBOutlet weak var spellName: UILabel!
    @IBOutlet weak var spellImg: UIImageView!
    @IBOutlet weak var levelLbl: UILabel!
    @IBOutlet weak var manaCostLbl: UILabel!
    @IBOutlet weak var basicEffLbl: UILabel!
    @IBOutlet weak var advancedEffLbl: UILabel!
    @IBOutlet weak var expertEffLbl: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
