//
//  SpellsTVC.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 7.08.22.
//

import UIKit

class SpellsTVC: UITableViewController {
    
    var selectedSpells: [Spell]?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let spellsCount = selectedSpells {
            return spellsCount.count
        }
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SpellCell", for: indexPath) as? SpellCell {
            if let arraySpells = selectedSpells {
                cell.configureCell(spell: arraySpells[indexPath.row])
                return cell
            }
        }
        return UITableViewCell()
    }

}
