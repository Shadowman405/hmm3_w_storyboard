//
//  SpellDetailsVC.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 8.08.22.
//

import UIKit

class SpellDetailsVC: UIViewController {
    
    var selectedSpellPass: Spell?
    
    @IBOutlet weak var spellName: UILabel!
    @IBOutlet weak var spellImg: UIImageView!
    @IBOutlet weak var levelLbl: UILabel!
    @IBOutlet weak var manaCostLbl: UILabel!
    @IBOutlet weak var basicEffLbl: UILabel!
    @IBOutlet weak var advancedEffLbl: UILabel!
    @IBOutlet weak var expertEffLbl: UILabel!
    

    override func viewDidLoad() {
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        
        super.viewDidLoad()
        if let selectedSpell = selectedSpellPass {
            configureView(spell: selectedSpell)
        }
    }
    
    
    
    func configureView(spell: Spell){
        spellName.text = spell.spellName
        spellImg.image = UIImage(named: spell.spellImage)
        levelLbl.text = spell.spellLevel
        manaCostLbl.text = spell.spellManaCost
        basicEffLbl.text = spell.spellBasicEffect
        advancedEffLbl.text = spell.spellAdvancedEffect
        expertEffLbl.text = spell.spellExpertEffect
    }

}


extension SpellDetailsVC: UIGestureRecognizerDelegate {
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
}
