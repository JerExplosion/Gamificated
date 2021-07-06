//
//  Boton.swift
//  SpriteKiddo
//
//  Created by Jerry Ren on ~/~/21.
//

import SpriteKit

class Boton: SKSpriteNode {
    var defaultBoton: SKSpriteNode
    var actionable: (Int) -> ()
    var indexer: Int
    
    init(actionable: @escaping (Int) -> (), indexer: Int, defaultBotonImageryString: String) {
        
        defaultBoton = SKSpriteNode(imageNamed: defaultBotonImageryString)
        self.indexer = indexer
        self.actionable = actionable
        
        super.init(texture: nil, color: .clear, size: defaultBoton.size)
        
        isUserInteractionEnabled = true
        addChild(defaultBoton)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        defaultBoton.alpha = 0.7
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let firstTouch = touches.first else { return }
        let touch: UITouch = firstTouch
        let contactPosition: CGPoint = touch.location(in: self)
        
        if defaultBoton.contains(contactPosition) {
            defaultBoton.alpha = 0.7
        } else {
            defaultBoton.alpha = 1.0
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let firstTouch = touches.first else { return }
        let touch: UITouch = firstTouch
        let contactPosition: CGPoint = touch.location(in: self)
        
        if defaultBoton.contains(contactPosition) {
            actionable(indexer)
        }
        defaultBoton.alpha = 1.0
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        defaultBoton.alpha = 1.0
    }
}
