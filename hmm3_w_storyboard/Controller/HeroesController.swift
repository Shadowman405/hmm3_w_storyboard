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
        return 300
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "heroCell", for: indexPath) as? HeroCell {
            cell.configureCell(hero: data.heroes[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    

}
