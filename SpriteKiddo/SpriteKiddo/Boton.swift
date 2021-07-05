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
}
