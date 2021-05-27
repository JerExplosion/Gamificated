//
//  CirculatedButton.swift
//  SequentialColorful
//
//  Created by Jerry Ren on 5/26/21.
//

import UIKit

class CirculatedButton: UIButton {
    override func awakeFromNib() {
        layer.masksToBounds = true
        layer.cornerRadius = frame.size.height / 2
    }
}
