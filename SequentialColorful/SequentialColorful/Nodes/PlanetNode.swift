//
//  PlanetNode.swift
//  SequentialColorful
//
//  Created by Jerry Ren on ~/~/21.
//

import SceneKit

class PlanetNode: SCNNode {
    override init() {
        super.init()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    static let planetNodeStatic = PlanetNode()
}
