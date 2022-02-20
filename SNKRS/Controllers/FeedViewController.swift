//
//  FeedViewController.swift
//  SNKRS
//
//  Created by Emanuelle Moço on 18/02/22.
//

import UIKit

class FeedViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
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
//        return calendars.count
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath) as! FeedCell
//        cell.textLabel?.text = "dsdsadsadsadsa"
        cell.tituloLabel.text = "THIS IS A TEST"
        cell.sizeLabel.text = "34"
//        cell.tituloLabel.text = calendars[indexPath.row].title
//        cell.diaLabel.text = calendars[indexPath.row].dia
//        cell.mesLabel.text = calendars[indexPath.row].mes
//        cell.tenisImage.image = UIImage(named: calendars[indexPath.row].imagePath)
//        cell.date?.text = calendars[indexPath.row].date
        return cell
    }
}

//extension FeedViewController: UITableViewDelegate {
////    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
////        return 200
////    }
//}

