//
//  HeroCell.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 1.08.22.
//

import UIKit

class HeroCell: UITableViewCell {
    
    @IBOutlet weak var heroImg: UIImageView!
    @IBOutlet weak var heroName: UILabel!
    @IBOutlet weak var heroSpec: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(hero: Hero) {
        heroImg.image = UIImage(named: hero.heroImg)
        heroName.text = hero.name
        heroSpec.text = hero.heroClass
    }

}
