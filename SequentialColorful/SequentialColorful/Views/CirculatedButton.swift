//
//  CirculatedButton.swift
//  SequentialColorful
//
//  Created by Jerry Ren on ~/~/21.
//

import UIKit

class CirculatedButton: UIButton {
    override func awakeFromNib() {
        layer.masksToBounds = true
        layer.cornerRadius = frame.size.height / 2
    }
    
    override var isHighlighted: Bool {
        didSet {
            switch isHighlighted {
            case true:
                alpha = 1/1
            default:
                alpha = 1/2
            }
        }
    }
}
