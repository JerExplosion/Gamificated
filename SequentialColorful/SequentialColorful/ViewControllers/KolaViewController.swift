//
//  KolaViewController.swift
//  SequentialColorful
//
//  Created by Jerry Ren on 8/5/21.
//

import UIKit
import Koloda

class KolaViewController: UIViewController, KolodaViewDataSource  {
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        <#code#>
    }
    
    func kolodaNumberOfCards(_ koloda: KolodaView) -> Int {
        <#code#>
    }
    
    
    @IBOutlet weak var lodaView: KolodaView! {
        didSet {
            lodaView.dataSource = self
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}
