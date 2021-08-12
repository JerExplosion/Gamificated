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
        
        self.geometry = SCNSphere(radius: 1.0)
        self.geometry?.firstMaterial?.transparency = 1
        self.geometry?.firstMaterial?.shininess = 77
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    static let planetNodeStatic = PlanetNode()
}
