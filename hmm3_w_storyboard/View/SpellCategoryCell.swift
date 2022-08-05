//
//  SpellCategoryCell.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 5.08.22.
//

import UIKit

class SpellCategoryCell: UITableViewCell {

    @IBOutlet weak var spellCategoryImg: UIImageView!
    @IBOutlet weak var spellCategoryLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureCell(spellCategory: SpellsCategory){
        spellCategoryImg.image = UIImage(named: spellCategory.schhoolImage)
        spellCategoryLbl.text = spellCategory.speelSchool
    }

}
