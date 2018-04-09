//
//  GameViewController.swift
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = MainMenuScene(fileNamed: "MainMenu")
        
        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene?.scaleMode = .resizeFill
        skView.presentScene(scene)
        /*
        let scene = GameScene(size: view.bounds.size)
        //let scene = GameplayScene(fileNamed: "GameplayScene")
        
        
        

        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .resizeFill
        skView.presentScene(scene)
        */
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
