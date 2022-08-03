//
//  CreatureDetailsVC.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 3.08.22.
//

import UIKit

class CreatureDetailsVC: UIViewController {
    
    var selectedCreature: Creature?
    
    @IBOutlet weak var creatureImg: UIImageView!
    @IBOutlet weak var creatureName: UILabel!
    @IBOutlet weak var creatureAtckLbl: UILabel!
    @IBOutlet weak var creatureDefLbl: UILabel!
    @IBOutlet weak var creatureDmgLbl: UILabel!
    @IBOutlet weak var creatureHpLbl: UILabel!
    @IBOutlet weak var creatureSpdLbl: UILabel!
    @IBOutlet weak var creatureSpecLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}
