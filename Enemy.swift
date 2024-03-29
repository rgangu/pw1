//
//  File.swift
//

import SpriteKit

class Enemy : SKSpriteNode {
    
    private var _weapon : Weapon?
    private var _hearts : Int32?  // this is regarding to blood
    private var _supp : Supplement?

    //ctor
    init(imageNamed : String) {
        let texture = SKTexture(imageNamed: imageNamed)
        super.init(texture: texture, color: UIColor.cyan, size: texture.size())
        
        self.physicsBody = SKPhysicsBody(rectangleOf: self.size) // 1
        self.physicsBody?.isDynamic = true // 2
        self.physicsBody?.categoryBitMask = PhysicsCategory.Enemy // 3
        self.physicsBody?.contactTestBitMask = PhysicsCategory.Bullet // 4
        self.physicsBody?.collisionBitMask = PhysicsCategory.None // 5
        
    }
    
    
    var weapon : Weapon {
        get {
            return _weapon!
        } set {
            _weapon = newValue
        }
    }
    
    var heart : Int32 {
        get {
            return _hearts!
        } set {
            _hearts = newValue
        }
    }
    
    var supp : Supplement {
        get {
            return _supp!
        } set {
            _supp = newValue
        }
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
