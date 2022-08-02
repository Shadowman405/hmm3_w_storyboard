//
//  CreatureCell.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 2.08.22.
//

import UIKit

class CreatureCell: UITableViewCell {
    
    @IBOutlet weak var creatureImg: UIImageView!
    @IBOutlet weak var creatureName: UILabel!
    @IBOutlet weak var creatureLvl: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(creature: Creature){
        creatureImg.image = UIImage(named: creature.creatureImg)
        creatureName.text = creature.name
        creatureLvl.text = creature.creatureLevel
    }

}
