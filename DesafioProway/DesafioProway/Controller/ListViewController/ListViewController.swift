//
//  ListViewController.swift
//  DesafioProway
//
//  Created by Caio Berkley on 11/06/21.
//  Copyright © 2021 Ramon Augusto. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    @IBOutlet weak var personalLoanButton: UIButton!
    @IBOutlet weak var personalLoanGuarantyButton: UIButton!
    @IBOutlet weak var payrollLoanButton: UIButton!
    @IBOutlet weak var rotativeLoanButton: UIButton!
    @IBOutlet weak var overdraftButton: UIButton!
    @IBOutlet weak var propertyFinancingButton: UIButton!
    @IBOutlet weak var incomeTaxButton: UIButton!
    @IBOutlet weak var incomeSalaryButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loanDetailButton(_ sender: UIButton) {
        
        switch sender {
            
        case personalLoanButton:
            
            let NextView = DetailViewController()
            self.present(NextView, animated: true, completion: nil)
            
        case personalLoanGuarantyButton:
            return
        case payrollLoanButton:
            return
        case rotativeLoanButton:
            return
        case overdraftButton:
            return
        case propertyFinancingButton:
            return
        case incomeTaxButton:
            return
        case incomeSalaryButton:
            return
            
        default:
            return
            
        }
    }
    
    @IBAction func changeButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
        
    }
}
