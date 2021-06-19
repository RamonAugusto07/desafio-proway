//
//  ViewController.swift
//  DesafioProway
//
//  Created by Caio Berkley on 03/06/21.
//  Copyright © 2021 Ramon Augusto. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var startOutlet: UIButton!
    @IBOutlet weak var textCpf: UITextField!
    @IBOutlet weak var cpfAlertLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func verifyCpf() {
        if self.textCpf.text?.isEmpty == true {
            self.cpfAlertLabel.isHidden = false
            
        } else {
            self.cpfAlertLabel.isHidden = true
            
            let nextView = ListViewController()
            self.present(nextView, animated: true, completion: nil)
            
        }
    }
    
    //MARK: Action
    @IBAction func startAction(_ sender: UIButton) {
        verifyCpf()
        
    }
}
