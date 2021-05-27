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
    
    @IBAction func circulatedcolorfulactions(_ sender: CirculatedButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
}
