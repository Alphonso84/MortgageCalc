//
//  ViewController.swift
//  MortgageCalc
//
//  Created by Alphonso Sensley II on 6/16/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var homeValueTF: UITextField!
    
    @IBOutlet weak var downPaymentTF: UITextField!
    
    @IBOutlet weak var loanAmountLabel: UILabel!
    
    var loanAmountValue = Int()
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func calculateButtonTapped(_ sender: Any) {
        
        guard let homeValueAmount = Int(homeValueTF.text ?? "") else {return}
                
        guard let downPaymentAmount = Int(downPaymentTF.text ?? "") else {return}
       
        loanAmountValue = homeValueAmount - downPaymentAmount
        loanAmountLabel.text = "Loan amount is: \(loanAmountValue)"
        loanAmountLabel.setNeedsLayout()
    }
    
}

