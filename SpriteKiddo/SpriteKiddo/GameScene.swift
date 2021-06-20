//
//  GameScene.swift
//  SpriteKiddo
//
//  Created by Jerry Ren on ~/~/21.
//

import SpriteKit

class GameScene: SKScene {
    
    private let ichiNodo = SKNode()
    private let ichiSpriteNodo = SKSpriteNode(color: .red, size: CGSize(width: 201, height: 202))
    private let ichiTexturedSpriteNodo = SKSpriteNode(imageNamed: "unknown object")
    private let orangeBox = SKSpriteNode(color: .orange, size: CGSize(width: 51, height: 52))
    
    override func didMove(to view: SKView) {
        addChild(ichiNodo)
        
        ichiSpriteNodo.position = CGPoint(x: frame.midX, y: frame.midY)
        ichiSpriteNodo.anchorPoint = CGPoint.zero
        addChild(ichiSpriteNodo)
        
        ichiTexturedSpriteNodo.zPosition = 1
        ichiTexturedSpriteNodo.size = CGSize(width: 101, height: 102)
        ichiSpriteNodo.addChild(ichiTexturedSpriteNodo)
        
        orangeBox.zPosition = 2
        orangeBox.position = CGPoint(x: ichiSpriteNodo.size.width/2, y: ichiSpriteNodo.size.height/2)
        ichiSpriteNodo.addChild(orangeBox)
    }
}
