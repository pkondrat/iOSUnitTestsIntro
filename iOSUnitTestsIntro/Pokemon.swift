//
//  Pokemon.swift
//  iOSUnitTestsIntro
//
//  Created by Piotr on 24/12/2016.
//  Copyright © 2016 X-Team. All rights reserved.
//

import Foundation
class Pokemon {
    var type:PokemonType
    var attackType:PokemonAttackType
    var health:Int = 100
    
    init(type:PokemonType, attackType:PokemonAttackType) {
        self.type = type
        self.attackType = attackType
    }
    
    func attack(enemy:Pokemon) {
        var damage = 30
        if enemy.type == .Fire && attackType == .Water{
            damage = 60
        }
        if enemy.type == .Water && attackType == .Fire{
            damage = 10
        }
        
        enemy.health -= damage
    }
}
enum PokemonType {
    case Neutral
    case Fire
    case Water
}

enum PokemonAttackType {
    case Normal
    case Fire
    case Water
}
