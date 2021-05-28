//
//  ViewController.swift
//  SequentialColorful
//
//  Created by Jerry Ren on ~/~/21.
//

import UIKit

final class ViewController: UIViewController {
    
    private var currentPlaya: Int?
    private var sequenceIndex: Int?
    private var colorsequence: Array<Int>?
    private var colorstotap: Array<Int>?
    private var scoresDuo: Array<Int>?
    
    @IBOutlet var irobuttoncollections: [CirculatedButton]! {
        didSet { irobuttoncollections = irobuttoncollections.sorted {
            $0.tag < $1.tag
        }
        irobuttoncollections.forEach {
            $0.alpha = 1/2
        }
        }
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
    
    @IBAction func actualizationaction(_ sender: UIButton) {
    }
    @IBAction func circulatedcolorfulactions(_ sender: CirculatedButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       initiateNewGame()
    }
    
    private func initiateNewGame() {
        actualizationbutton.setTitle("Start Game", for: .normal)
    }
}
