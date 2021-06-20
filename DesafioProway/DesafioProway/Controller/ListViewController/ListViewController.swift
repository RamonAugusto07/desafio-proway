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
    
    let loanListDescription = DescriptionOfLoans()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loanDetailButton(_ sender: UIButton) {
        
        switch sender {
            
        case personalLoanButton:
            
            let NextView = DetailViewController()

            self.present(NextView, animated: true, completion: nil)
            
            NextView.titleLabel.text = "Empréstimo Pessoal"
            NextView.descriptionLabel.text = loanListDescription.personalLoanDescription
            
        case personalLoanGuarantyButton:
            
            let NextView = DetailViewController()
            self.present(NextView, animated: true, completion: nil)
            
            NextView.titleLabel.text = "Empréstimo Pessoal com Garantia"
            NextView.descriptionLabel.text = loanListDescription.personalLoanGuarantyDescription
            
            
        case payrollLoanButton:
            let NextView = DetailViewController()
            self.present(NextView, animated: true, completion: nil)
            
            NextView.titleLabel.text = "Empréstimo Consignado"
            NextView.descriptionLabel.text = loanListDescription.payrollLoanDescription
            
            
            
            
        case rotativeLoanButton:
            let NextView = DetailViewController()
            self.present(NextView, animated: true, completion: nil)
        
            NextView.titleLabel.text = "Empréstimo Rotativo"
            NextView.descriptionLabel.text = loanListDescription.rotativeLoanDescription
            
            
            
        case overdraftButton:
            let NextView = DetailViewController()
            self.present(NextView, animated: true, completion: nil)
            
            
            NextView.titleLabel.text = "Empréstimo com Cheque Especial"
            NextView.descriptionLabel.text = loanListDescription.overdraftDescription
            
            
        case propertyFinancingButton:
            let NextView = DetailViewController()
            self.present(NextView, animated: true, completion: nil)
            
            NextView.titleLabel.text = "Refinanciamento de Imóvel"
            NextView.descriptionLabel.text = loanListDescription.propertyFinancingDescription
            
            
        case incomeTaxButton:
            let NextView = DetailViewController()
            self.present(NextView, animated: true, completion: nil)
            
            
            NextView.titleLabel.text = "Antecipação do I.R."
            NextView.descriptionLabel.text = loanListDescription.incomeTaxDescription
            
            
        case incomeSalaryButton:
            let NextView = DetailViewController()
            self.present(NextView, animated: true, completion: nil)
            
            
            NextView.titleLabel.text = "Antecipação do 13"
            NextView.descriptionLabel.text = loanListDescription.incomeSalaryDescription
            
            
        default:
            return
            
        }
    }
    
    @IBAction func changeButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
        
    }
}
