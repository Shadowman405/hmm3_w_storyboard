//
//  HeroesController.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 1.08.22.
//

import UIKit

class HeroesController: UITableViewController {
    
    let data = DataSet()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.heroes.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "heroCell", for: indexPath) as? HeroCell {
            cell.configureCell(hero: data.heroes[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toHeroDetails", sender: self)
    }
    
    //MARK: - Segues
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toHeroDetails",
           let destination = segue.destination as? HeroDetailsVC {
            let indexPath = tableView.indexPathForSelectedRow!
            destination.selectedHeroPass = data.heroes[indexPath.row]
        }
    }
    

}
