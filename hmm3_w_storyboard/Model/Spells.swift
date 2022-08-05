//
//  Spells.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 5.08.22.
//

import Foundation

struct SpellsCategory {
    let speelSchool: String
    let schhoolImage: String
}

struct Spell {
    let spellName: String
    let spellImage: String
    let spellLevel: String
    let spellManaCost: String
    let spellBasicEffect: String
    let spellAdvancedEffect: String
    let spellExpertEffect: String
    let spellSchool: spellSchool
}

enum spellSchool {
    case AllSchools
    case FireMagic
    case WaterMagic
    case AirMagic
    case EarthMagic
}
