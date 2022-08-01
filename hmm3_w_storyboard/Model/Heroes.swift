//
//  Heroes.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 1.08.22.
//

import Foundation

struct Hero {
    let name: String
    let heroImg: String
    let description: String
    let heroClass: String
    let heroSpec: String
    let firstSkill: String
    let secondSkill: String?
    let heroSpell: String?
    let race: raceTown
}

enum raceTown {
    case Castle
    case Rampart
    case Tower
    case Inferno
    case Necropolis
    case Dungeon
    case Stronghold
    case Fortress
    case Conflux
}
