//
//  HeroesTableViewController.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 30.07.22.
//

import UIKit

class HeroesTableViewController: UITableViewController {
    
    let data = DataSet()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.towns.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "heroesCell", for: indexPath) as? TownCell {
            cell.configureCell(town: data.towns[indexPath.row])
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "selector",
           let destination = segue.destination as? ViewController {
            let indexPath = tableView.indexPathForSelectedRow!
            if indexPath.row == 0 {
                let filteredHeroesArray = data.heroes.filter {$0.race == .Castle}
                let filteredCreaturesArray = data.creatures.filter {$0.race == .Castle}
                destination.heroesArray = filteredHeroesArray
                destination.creaturesArray = filteredCreaturesArray
            } else if indexPath.row == 1 {
                let filteredHeroesArray = data.heroes.filter {$0.race == .Rampart}
                destination.heroesArray = filteredHeroesArray
                let filteredCreaturesArray = data.creatures.filter {$0.race == .Rampart}
                destination.creaturesArray = filteredCreaturesArray
            }
        }
    }
    

}
