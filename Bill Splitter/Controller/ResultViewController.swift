//
//  ResultViewController.swift
//  Bill Splitter
//
//  Created by Gustavo Ziger on 08/02/22.
//

import UIKit

class ResultViewController: UIViewController {

    
    var totalPeople : Double?
    var bill : Double?
    var tipPercentage: Int?
    
    var totalPerPerson : Double?
    
    @IBOutlet weak var totalPerPersonLabel: UILabel!
    @IBOutlet weak var detailedInfoLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let billTip = (Double(tipPercentage!)/100) * bill! // Calculates the tip
        
        totalPerPerson = (bill! + billTip) / totalPeople! // Calculates total per person
        
        totalPerPersonLabel.text = "$" + String(format: "%.2f", totalPerPerson!)
        detailedInfoLabel.text = "Split $\(String(format: "%.2f", bill!)) between \(Int(totalPeople!)) people, with \(tipPercentage!)% tip."
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
