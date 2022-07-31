//
//  DataManager.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 1.08.22.
//

import Foundation

class DataSet {
    let towns = [TownCategory(title: "Castle", imageName: "Castle-in"), TownCategory(title: "Rampart", imageName: "Rampart-in"), TownCategory(title: "Tower", imageName: "Tower-in"), TownCategory(title: "Inferno", imageName: "Inferno-in"), TownCategory(title: "Necropolis", imageName: "Necropolis-in"), TownCategory(title: "Dungeon", imageName: "Dungeon-in"), TownCategory(title: "Stronghold", imageName: "Stronghold-in"), TownCategory(title: "Fortress", imageName: "Fortress-in"), TownCategory(title: "Conflux", imageName: "Conflux-in")]
    
    let heroes = [Hero(name: "Christian", heroImg: "Hero_Christian", description: "Christian was always more of a frontiersman than a Knight, having set foot in nearly every part of Enroth before finally settling into military service in Erathia. Though a wanderer and a bit of a dreamer, his battlefield tactics are feared throughout the world.", heroClass: "Knight", heroSpec: "Ballista", firstSkill: "Basic Leadership", secondSkill: "Basic Artilery", heroSpell: nil), Hero(name: "Edric", heroImg: "Hero_Edric", description: "Edric's great grandfather was the first man in Erathia to domesticate and train a wild Griffin. Now, Edric's family maintains Erathia's largest Griffin breeding grounds for use in the King's armies.", heroClass: "Knight", heroSpec: "Griffins", firstSkill: "Basic Leadership", secondSkill: "Basic Armor", heroSpell: nil)]
}
