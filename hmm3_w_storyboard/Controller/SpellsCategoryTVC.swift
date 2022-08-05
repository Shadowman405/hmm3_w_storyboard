//
//  SpellsCategoryTVC.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 5.08.22.
//

import UIKit

class SpellsCategoryTVC: UITableViewController {
    
    let data = DataSpells()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.spellsCategory.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SpellCategoryCell", for: indexPath) as? SpellCategoryCell {
            cell.configureCell(spellCategory: data.spellsCategory[indexPath.row])
                return cell
        }
        return UITableViewCell()
    }

}
