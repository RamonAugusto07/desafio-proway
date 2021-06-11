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
    @IBOutlet weak var StartOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //MARK: Action
    @IBAction func StartAction(_ sender: UIButton) {
        
        let nextView = ListViewController()
        self.present(nextView, animated: true, completion: nil)
        
    }
    
}

