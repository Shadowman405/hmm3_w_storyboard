//
//  TownCell.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 31.07.22.
//

import UIKit

class TownCell: UITableViewCell {
    
    @IBOutlet weak var townImage: UIImageView!
    @IBOutlet weak var townLbl: UILabel!
    
    override func awakeFromNib() {
        townImage.layer.cornerRadius = 15
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
