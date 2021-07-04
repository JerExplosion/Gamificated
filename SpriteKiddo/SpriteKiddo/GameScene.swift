//
//  GameScene.swift
//  SpriteKiddo
//
//  Created by Jerry Ren on ~/~/21.
//

import SpriteKit

class GameSceneTwoPointO: SKScene {
    let foxySpriteNodo = SKSpriteNode(imageNamed: "Run0")
    var foxyFrames = [SKTexture]()
    
    override func didMove(to view: SKView) {
        foxySpriteNodo.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(foxySpriteNodo)
        
        let texturedAtlas = SKTextureAtlas(named: "FoxyDoggy")
        
        print(texturedAtlas)
        
        for indexer in 0..<texturedAtlas.textureNames.count {
             let texturedNamaeci = "Run" + String(indexer)
            foxyFrames.append(texturedAtlas.textureNamed(texturedNamaeci))
        }
    }
}

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
        
        // ephemeral-physics
        
        physicsWorld.gravity = CGVector(dx: -1.0, dy: -2.2)
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        ichiTexturedSpriteNodo.physicsBody = SKPhysicsBody(circleOfRadius: ichiTexturedSpriteNodo.size.width/2)
        ichiTexturedSpriteNodo.physicsBody?.restitution = 1.0 // bounciness adjustable
        ichiTexturedSpriteNodo.physicsBody?.allowsRotation = false
        
        orangeBox.physicsBody = SKPhysicsBody(rectangleOf: orangeBox.size)
        orangeBox.physicsBody?.restitution = 1.3
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        ichiTexturedSpriteNodo.run(SKAction.move(to: CGPoint(x: ichiSpriteNodo.size.width, y: ichiSpriteNodo.size.height), duration: 2.2)) {
            self.ichiTexturedSpriteNodo.position = CGPoint.zero
        }
        if !orangeBox.hasActions() {
            let piAction = SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 2.2)
            let scaleAction = SKAction.scale(by: 0.77, duration: 2.2)
//            orangeBox.run(SKAction.repeatForever(piAction))
//            orangeBox.run(SKAction.group([piAction, scaleAction]))
            orangeBox.run(SKAction.sequence([piAction, scaleAction]))
        } else {
            orangeBox.removeAllActions()
        }
        
        if let _ = ichiTexturedSpriteNodo.action(forKey: "rotatedness") {
            ichiTexturedSpriteNodo.removeAction(forKey: "rotatedness")
        } else {
            ichiTexturedSpriteNodo.run(SKAction.repeatForever(SKAction.rotate(byAngle: .pi, duration: 2.2)), withKey: "rotatedness")
        }
    }
}
