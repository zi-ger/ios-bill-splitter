//
//  ResultViewController.swift
//  Bill Splitter
//
//  Created by Gustavo Ziger on 08/02/22.
//

import UIKit

class ResultViewController: UIViewController {

    var totalPerPerson : Double?
    var totalPeople : Int?
    var billFinal : Int?
    
    @IBOutlet weak var totalPerPersonLabel: UILabel!
    @IBOutlet weak var detailedInfoLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
