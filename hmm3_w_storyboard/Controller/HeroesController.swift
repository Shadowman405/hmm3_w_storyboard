//
//  HeroesController.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 1.08.22.
//

import UIKit

class HeroesController: UITableViewController {
    
    let data = DataSet()
    var filteredHeroes: [Hero]?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let heroesCount = filteredHeroes {
            return heroesCount.count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "heroCell", for: indexPath) as? HeroCell {
            if let arrayHeroes = filteredHeroes {
            cell.configureCell(hero: arrayHeroes[indexPath.row])
                print(arrayHeroes.count)
            return cell
            }
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
