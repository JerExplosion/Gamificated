//
//  GameViewController.swift
//  SpriteKiddo
//
//  Created by Jerry Ren on ~/~/21.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            
            let gamescene = GameSceneTwoPointO(size: view.bounds.size)
                // GameScene(size: view.bounds.size)
            gamescene.scaleMode = .aspectFill
            
            view.presentScene(gamescene)
            
            view.ignoresSiblingOrder = true
            view.showsFPS = true
            view.showsNodeCount = true
            view.showsPhysics = true
        }
    }
}
