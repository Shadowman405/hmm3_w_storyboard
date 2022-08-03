//
//  CreatureDetailsVC.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 3.08.22.
//

import UIKit

class CreatureDetailsVC: UIViewController {
    
    var selectedCreaturePass: Creature?
    
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
        
        if let selectedCreature = selectedCreaturePass {
            configView(creature: selectedCreature)
        }
    }
    
    func configView(creature: Creature){
        creatureImg.image = UIImage(named: creature.creatureImg)
        creatureName.text = creature.name
        creatureAtckLbl.text = creature.attack
        creatureDefLbl.text = creature.defense
        creatureDmgLbl.text = creature.damage
        creatureHpLbl.text = creature.health
        creatureSpdLbl.text = creature.speed
        creatureSpecLbl.text = creature.specAbility
    }
    
}
