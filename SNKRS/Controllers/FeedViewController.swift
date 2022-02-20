//
//  FeedViewController.swift
//  SNKRS
//
//  Created by Emanuelle Moço on 18/02/22.
//

//let title: String //Nome do tenis
//let price: String  // Preco
//let size: String // Tamanho
//let imagePath: String // Nome da imagem

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var feeds: [Feed] = [
        Feed(title: "Dunk Easter 22", price: "R$ 1.000,00", size: "36", imagePath: "feed2"),
        Feed(title: "Air Jordan 1 High", price: "R$ 2.000,00", size: "41", imagePath: "feed1"),
        Feed(title: "Yeezy Slider", price: "R$ 900,00", size: "38", imagePath: "feed3"),
        Feed(title: "Air Max Siempre", price: "R$ 1.200,00", size: "39", imagePath: "airmax1"),
        Feed(title: "Dunk Black", price: "R$ 900,00", size: "44", imagePath: "image4"),
        Feed(title: "Yeezy Bread", price: "R$ 2.300,00", size: "35", imagePath: "image5"),
        Feed(title: "Dunk Chicago", price: "R$ 1.150,00", size: "33", imagePath: "imagem1"),
        Feed(title: "Air Jordan Low", price: "R$ 2.300,00", size: "35", imagePath: "imagem2"),
        Feed(title: "Yeezy Zebra", price: "R$ 2.550,00", size: "43", imagePath: "imagem3"),
        Feed(title: "Air Jordan Mocha", price: "R$ 2.800,00", size: "35", imagePath: "jordanmocha")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self

        tableView.register(UINib(nibName: "FeedCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
        
    }

}

extension FeedViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return feeds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath) as! FeedCell
//        cell.textLabel?.text = "dsdsadsadsadsa"
        cell.tituloLabel.text = feeds[indexPath.row].title
        cell.sizeLabel.text = feeds[indexPath.row].size
        cell.priceLabel.text = feeds[indexPath.row].price
        cell.tenisImage.image = UIImage(named: feeds[indexPath.row].imagePath)

        return cell
    }
}

//extension FeedViewController: UITableViewDelegate {
////    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
////        return 200
////    }
//}

