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

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

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

}
