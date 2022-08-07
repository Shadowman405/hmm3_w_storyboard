//
//  SpellCell.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 7.08.22.
//

import UIKit

class SpellCell: UITableViewCell {
    
    @IBOutlet weak var spellImg: UIImageView!
    @IBOutlet weak var spellNameLbl: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
