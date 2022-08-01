//
//  HeroDetailsVC.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 1.08.22.
//

import UIKit

class HeroDetailsVC: UIViewController {
    
    var selectedHeroPass: Hero?
    
    @IBOutlet weak var heroImg: UIImageView!
    @IBOutlet weak var heroName: UILabel!
    @IBOutlet weak var heroClass: UILabel!
    @IBOutlet weak var heroSpec: UILabel!
    @IBOutlet weak var heroFirstSkill: UILabel!
    @IBOutlet weak var heroSecondSkill: UILabel!
    @IBOutlet weak var heroDescription: UILabel!
    
    @IBOutlet weak var secondTextLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let selectedHero = selectedHeroPass {
            configureView(hero: selectedHero)
        }
        
        heroImg.layer.cornerRadius = 40
        
        if heroSecondSkill.text == nil {
            secondTextLbl.isHidden = true
        }
    }
    
    func configureView(hero: Hero) {
            heroImg.image = UIImage(named: hero.heroImg)
            heroName.text = hero.name
            heroClass.text = hero.heroClass
            heroSpec.text = hero.heroSpec
            heroFirstSkill.text = hero.firstSkill
            heroSecondSkill.text = hero.secondSkill
            heroDescription.text = hero.description
    }
}
