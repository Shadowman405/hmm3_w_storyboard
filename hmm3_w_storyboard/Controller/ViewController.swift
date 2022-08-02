//
//  ViewController.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 30.07.22.
//

import UIKit

class ViewController: UIViewController {
    
    var heroesArray: [Hero]?
    var creaturesArray: [Creature]?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(heroesArray ?? "")
    }
    
// MARK: - Buttons

    
    @IBAction func HeroesClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "toHeroesTableVC", sender: self)
    }
    
    @IBAction func CreaturesClicked(_ sender: UIButton) {
        
    }
    
    @IBAction func MagicClicked(_ sender: Any) {
    }
    
    @IBAction func ArtifactsClicked(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toHeroesTableVC",
           let destination = segue.destination as? HeroesController {
            destination.filteredHeroes = heroesArray
        } else if segue.identifier == "toCreaturesTableVC",
                  let destination = segue.destination as? CreaturesTableViewController {
            destination.filteredCreatures = creaturesArray
        }
        }
    
}

