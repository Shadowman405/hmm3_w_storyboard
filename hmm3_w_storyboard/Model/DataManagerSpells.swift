//
//  DataManagerSpells.swift
//  hmm3_w_storyboard
//
//  Created by Maxim Mitin on 5.08.22.
//

import Foundation


class DataSpells {
    let spellsCategory = [SpellsCategory(speelSchool: "All Schools", schhoolImage:                                "School_of_Air_Magic"),
                          SpellsCategory(speelSchool: "Air School", schhoolImage: "School_of_Air_Magic"),
                          SpellsCategory(speelSchool: "Earth School", schhoolImage: "School_of_Earth_Magic"),
                          SpellsCategory(speelSchool: "Fire School", schhoolImage: "School_of_Fire_Magic"),
                          SpellsCategory(speelSchool: "Water School", schhoolImage: "School_of_Water_Magic")
    ]
    
    
    let spells = [
        Spell(spellName: "Magic Arrow", spellImage: "Magic_Arrow", spellLevel: "1", spellManaCost: "5/4", spellBasicEffect: "Causes a bolt of magical energy to strike the selected enemy unit, dealing (10 + (power x 10)) damage to it.", spellAdvancedEffect: "Causes a bolt of magical energy to strike the selected enemy unit, dealing (20 + (power x 10)) damage to it.", spellExpertEffect: "Causes a bolt of magical energy to strike the selected enemy unit, dealing (30 + (power x 10)) damage to it.", spellSchool: .AllSchools),
        Spell(spellName: "Visions", spellImage: "Visions", spellLevel: "1", spellManaCost: "4/2", spellBasicEffect: "Displays number of monsters in a wandering monster troop and whether or not the troop will offer to join the casting hero's army. Range is equal to power or three, whichever is greater.", spellAdvancedEffect: "Same as basic effect, except an enemy hero's primary skill stats, and the composition and quantity of the hero's army can be viewed. Range is (power x 2) or three, whichever is greater.", spellExpertEffect: "Same as advanced effect, except an enemy town's statistics and garrison composition and quantity may be viewed. Range is (power x 3) or three, whichever is greater.", spellSchool: .AllSchools),
        // MARK: - Air magic
        Spell(spellName: "Haste", spellImage: "Haste", spellLevel: "1", spellManaCost: "6/5", spellBasicEffect: "Increases the speed of the selected allied unit by 3.", spellAdvancedEffect: "Increases the speed of the selected allied unit by 5.", spellExpertEffect: "Increases the speed of all allied units by 5.", spellSchool: .AirMagic),
        Spell(spellName: "View Air", spellImage: "View_Air", spellLevel: "1", spellManaCost: "2/1", spellBasicEffect: "Displays the location of all artifacts on the view world screen.", spellAdvancedEffect: "Displays the location of all artifacts and heroes on the view world screen.", spellExpertEffect: "Displays the location of all artifacts, heroes and towns.", spellSchool: .AirMagic)
    ]
}
