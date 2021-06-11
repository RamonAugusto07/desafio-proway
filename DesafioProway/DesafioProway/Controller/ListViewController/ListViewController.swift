//
//  ListViewController.swift
//  DesafioProway
//
//  Created by Caio Berkley on 11/06/21.
//  Copyright © 2021 Ramon Augusto. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func DetailButton(_ sender: Any) {
        
        //FIXME: Implementar navigationController
        let nextView = DetailViewController()
        self.navigationController?.pushViewController(nextView, animated: true)

    }


}
