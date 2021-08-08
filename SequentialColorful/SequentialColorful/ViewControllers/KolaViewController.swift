//
//  KolaViewController.swift
//  SequentialColorful
//
//  Created by Jerry Ren on 8/5/21.
//

import UIKit
import Koloda

final class KolaViewController: UIViewController, KolodaViewDataSource, KolodaViewDelegate  {
    internal func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        return UIView()
    }
    
    internal func kolodaNumberOfCards(_ koloda: KolodaView) -> Int {
        return Int.init()
    }
    
    @IBOutlet weak var lodaView: KolodaView! {
        didSet {
            lodaView.dataSource = self
            lodaView.delegate = self
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

extension KolaViewController {
    internal func kolodaDidRunOutOfCards(_ koloda: KolodaView) {
        lodaView.reloadData()
    }
}
