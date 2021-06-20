//
//  DetailViewController.swift
//  DesafioProway
//
//  Created by Caio Berkley on 19/06/21.
//  Copyright © 2021 Ramon Augusto. All rights reserved.
//

import UIKit
import Foundation

class DetailViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UITextView!
    
    var delegate:UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func contactBroker(_ sender: Any) {
        
        let mensagem = "Contatar candida... Digo, corretor?"
        let alert = UIAlertController(title: "Whatsapp", message: mensagem, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cancelar", style: UIAlertAction.Style.cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            if (action.style == .default){
                if let url = URL(string: "https://wa.me/5513981812465?text=Cr%C3%A9dito%20PTX:%20Parab%C3%A9ns!%20Voc%C3%AA%20foi%20selecionado%20para%20a%20vaga%20de%20Desenvolvedor%20iOS%20Junior!"), UIApplication.shared.canOpenURL(url) {
                    if #available(iOS 10, *) {
                        UIApplication.shared.open(url)
                    }
                    else {
                        UIApplication.shared.openURL(url)
                    }
                }
            }}))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func dismissView(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
        
    }
    
}
