//
//  ViewController.swift
//  SequentialColorful
//
//  Created by Jerry Ren on ~/~/21.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var irobuttoncollections: [CirculatedButton]! {
        didSet { }
    }
    @IBOutlet weak var actualizationbutton: UIButton! {
        didSet { }
    }
    @IBOutlet var scoringcollections: [UILabel]! {
        didSet { }
    }
    @IBOutlet var playacollections: [UILabel]! {
        didSet { }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
}
