// type conversions for compatibility


import UIKit

class PhysicsCategory: NSObject {
    static let None      : UInt32 = 0
    static let All       : UInt32 = UInt32.max
    static let Enemy   : UInt32 = 0b1       // 1
    static let Bullet: UInt32 = 0b10      // 2
    static let Player: UInt32 = 0b100      // 3
    static let Bomb: UInt32 = 0b1000      // 4
    static let Supplement : UInt32 = 0b10000 //5
}
