//
//  CreaturesTableViewController.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 2.08.22.
//

import UIKit

class CreaturesTableViewController: UITableViewController {
    
    var filteredCreatures: [Creature]?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let creaturesCount = filteredCreatures {
            return creaturesCount.count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CreatureCell", for: indexPath) as? CreatureCell {
            if let arrayCreatures = filteredCreatures {
                cell.configureCell(creature: arrayCreatures[indexPath.row])
                return cell
            }
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toCreatureDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCreatureDetails",
            let destination = segue.destination as? CreatureDetailsVC {
                let indexPath = tableView.indexPathForSelectedRow!
                destination.selectedCreaturePass = filteredCreatures![indexPath.row]
            }
        }

}
