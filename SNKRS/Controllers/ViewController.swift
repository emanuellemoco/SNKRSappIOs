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
    
    var currentCellIndex = 0
    
//    var feedImages = ["slider3", "slider3", "slider3", "slider3", "slider3"]
    
//    var timer:Timer?
    
    
    private let table = UITableView()
    @IBOutlet weak var emailTextField: UITextField!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(slideToNext), userInfo: nil, repeats: true)
    }

//    @objc func slideToNext(){
//        if currentCellIndex < feedImages.count-1 {
//            currentCellIndex += 1
//
//        } else {
//            currentCellIndex = 0
//        }
//        CollectionViewIB.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .right , animated: true)
//    }

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
        SCLAlertView().showSuccess("Sucesso" , subTitle: "Agora voce vai saber de todas as novidades")
            emailTextField.text = ""
        }

    }
}


//extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return feedImages.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//        let cell = CollectionViewIB.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
//        cell.myImage.image = UIImage(named: feedImages[currentCellIndex])
//        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: CollectionViewIB.frame.width, height: CollectionViewIB.frame.height)
//    }
//}

