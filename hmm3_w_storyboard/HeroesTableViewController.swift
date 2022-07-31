//
//  HeroesTableViewController.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 30.07.22.
//

import UIKit

class HeroesTableViewController: UITableViewController {
    
    var towns = [TownCategory(title: "Castle", imageName: "Castle-in"), TownCategory(title: "Rampart", imageName: "Rampart-in"), TownCategory(title: "Tower", imageName: "Tower-in"), TownCategory(title: "Inferno", imageName: "Inferno-in"), TownCategory(title: "Necropolis", imageName: "Necropolis-in"), TownCategory(title: "Dungeon", imageName: "Dungeon-in"), TownCategory(title: "Stronghold", imageName: "Stronghold-in"), TownCategory(title: "Fortress", imageName: "Fortress-in"), TownCategory(title: "Conflux", imageName: "Conflux-in")]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return towns.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "heroesCell", for: indexPath) as? TownCell {
            cell.configureCell(town: towns[indexPath.row])
            return cell
        }

        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "selector", sender: self)
    }
    

}
