//
//  ViewController.swift
//  SNKRS
//
//  Created by Emanuelle Moço on 18/02/22.
//

import SCLAlertView
import UIKit
import SwiftUI

class ViewController: UIViewController {
    @IBOutlet var CollectionViewIB: UICollectionView!
    @IBOutlet weak var emailTextField: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func sendButton(_ sender: UIButton) {
        let emailReg: String = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest: NSPredicate = NSPredicate(format: "SELF MATCHES %@", emailReg)
        
        if emailTextField.text == "" {
            SCLAlertView().showInfo("Atenção", subTitle: "Campo vazio")

        }
        else if emailTest.evaluate(with: emailTextField.text!) == false {
            SCLAlertView().showError("Erro", subTitle: "Digite um email valido")
        }
        else {
        SCLAlertView().showSuccess("Sucesso" , subTitle: "Agora você vai saber de todas as novidades")
            emailTextField.text = ""
        }

    }
}


