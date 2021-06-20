//
//  DetailViewController.swift
//  DesafioProway
//
//  Created by Caio Berkley on 19/06/21.
//  Copyright © 2021 Ramon Augusto. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UITextView!
    
    var titleSelected: String?
    var descriptionSelected: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = ""
        descriptionLabel.text = ""

    }
    
    @IBAction func contactBroker(_ sender: Any) {
        
        
    }
    
    @IBAction func dismissView(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
        
    }
    
}
