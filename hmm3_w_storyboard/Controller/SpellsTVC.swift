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
        
        let swipeBack = UISwipeGestureRecognizer(target: self, action: #selector(swipeBack))
        swipeBack.direction = .right
        self.view.addGestureRecognizer(swipeBack)
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let spellsCount = selectedSpells {
            return spellsCount.count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toSpellDetailsVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSpellDetailsVC",
            let destination = segue.destination as? SpellDetailsVC {
                let indexPath = tableView.indexPathForSelectedRow!
                if let spell = selectedSpells {
                    destination.selectedSpellPass = spell[indexPath.row]
                }
            }

    }
    
    @objc func swipeBack(){
        self.navigationController?.popViewController(animated: true)
    }

}
