//
//  ViewController.swift
//  DesafioProway
//
//  Created by Caio Berkley on 03/06/21.
//  Copyright © 2021 Ramon Augusto. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {
    
    @IBOutlet weak var startOutlet: UIButton!
    @IBOutlet weak var textCpf: UITextField!
    @IBOutlet weak var cpfAlertLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
        verifyCpf()
    }
    
    func verifyCpf() {
        if self.textCpf.text?.isEmpty == true {
            self.cpfAlertLabel.isHidden = false
            
        } else {
            self.cpfAlertLabel.isHidden = true
    
        }
    }

    @IBAction func startAction(_ sender: UIButton) {
        
        guard textCpf.text?.isEmpty == false else { verifyCpf(); return }
        
        let nextView = ListViewController()
        self.present(nextView, animated: true, completion: nil)
        
    }
}
