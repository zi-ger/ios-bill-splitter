//
//  MainViewController.swift
//  Bill Splitter
//
//  Created by Gustavo Ziger on 06/02/22.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var billTotal: UITextField!
    var tipPercentage : Int = 10;
    
    @IBOutlet weak var zeroTipButton: UIButton!
    @IBOutlet weak var tenTipButton: UIButton!
    @IBOutlet weak var twentyTipButton: UIButton!
    
    @IBOutlet weak var splitLabel: UILabel!
    
    func clearButtons() {
        zeroTipButton.isSelected = false
        tenTipButton.isSelected = false
        twentyTipButton.isSelected = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tipButtonPressed(_ sender: UIButton) {
        switch sender.currentTitle! {
            case "0%":
                clearButtons()
                tipPercentage = 0
                zeroTipButton.isSelected = true
            case "10%":
                clearButtons()
                tipPercentage = 10
                tenTipButton.isSelected = true
            case "20%":
                clearButtons()
                tipPercentage = 20
                twentyTipButton.isSelected = true
            default:
                print("Not an option.")
        }
    }
    
    @IBAction func splitStepperPressed(_ sender: UIStepper) {
        splitLabel.text = String(Int(sender.value))
    }
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "resultSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultSegue" {
            let destination = segue.destination as! ResultViewController
            
            destination.bill = Double(billTotal.text!) ?? 0
            destination.tipPercentage = tipPercentage
            destination.totalPeople = Double(splitLabel.text!)
        }
    }
}
