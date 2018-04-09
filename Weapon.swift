//
//  Weapon.swift
//

import SpriteKit

/**
 this is the base class for all the weapons
 */
class Weapon : SKSpriteNode {
    
    private var _type : Weapon?
    
    var type : Weapon {
        get {
            return _type!
        } set {
            _type = newValue
        }
    }
    
}
