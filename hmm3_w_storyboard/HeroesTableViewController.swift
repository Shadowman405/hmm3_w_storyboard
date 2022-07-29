//
//  HeroesTableViewController.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 30.07.22.
//

import UIKit

class HeroesTableViewController: UITableViewController {
    
    var towns = ["Castle", "Rampart", "Inferno", "Necropolis", "Tower", "Dungeon", "Citadel", "Fortress", "Conflux"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return towns.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "heroesCell", for: indexPath)
        cell.textLabel!.text = towns[indexPath.row]

        return cell
    }
    

}
