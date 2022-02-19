//
//  CalendarViewController.swift
//  SNKRS
//
//  Created by Emanuelle Moço on 18/02/22.
//

import UIKit

class CalendarViewController: UIViewController{

    
    @IBOutlet weak var tableView: UITableView!
    
    
        var calendars: [Calendar] =
            [
            Calendar(title: "Air Max 1 Siempre Familia", dia: "10", mes: "fev", imagePath: "airmax1"),
            Calendar(title: "Yeezy Slider", dia: "15", mes: "fev", imagePath: "feed3"),
            Calendar(title: "Dunk Low Black", dia: "20", mes: "fev", imagePath: "image4"),
            Calendar(title: "Yeezy Bread", dia: "27", mes: "fev", imagePath: "image5"),
            Calendar(title: "Dunk Low Chicago", dia: "02", mes: "mar", imagePath: "imagem1"),
            Calendar(title: "Air Jordan 1", dia: "09", mes: "mar", imagePath: "imagem2"),
            Calendar(title: "Yeezy Zebra", dia: "14", mes: "mar", imagePath: "imagem3"),
            Calendar(title: "Air Jordan 1 High", dia: "20", mes: "mar", imagePath: "slider2"),
            Calendar(title: "Air Max 1 Siempre Familia", dia: "10", mes: "fev", imagePath: "airmax1"),
            Calendar(title: "Yeezy Slider", dia: "15", mes: "fev", imagePath: "feed3"),
            Calendar(title: "Dunk Low Black", dia: "20", mes: "fev", imagePath: "image4"),
            Calendar(title: "Yeezy Bread", dia: "27", mes: "fev", imagePath: "image5"),
            Calendar(title: "Dunk Low Chicago", dia: "02", mes: "mar", imagePath: "imagem1"),
            Calendar(title: "Air Jordan 1", dia: "09", mes: "mar", imagePath: "imagem2"),
            Calendar(title: "Yeezy Zebra", dia: "14", mes: "mar", imagePath: "imagem3"),
            Calendar(title: "Air Jordan 1 High", dia: "20", mes: "mar", imagePath: "slider2"),
            Calendar(title: "Air Max 1 Siempre Familia", dia: "10", mes: "fev", imagePath: "airmax1"),
            Calendar(title: "Yeezy Slider", dia: "15", mes: "fev", imagePath: "feed3"),
            Calendar(title: "Dunk Low Black", dia: "20", mes: "fev", imagePath: "image4"),
            Calendar(title: "Yeezy Bread", dia: "27", mes: "fev", imagePath: "image5"),
            Calendar(title: "Dunk Low Chicago", dia: "02", mes: "mar", imagePath: "imagem1"),


            ]

    override func viewDidLoad() {
        super.viewDidLoad()

//        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "CalendarCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
    }
}

extension CalendarViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return calendars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath) as! CalendarCell
        cell.tituloLabel.text = calendars[indexPath.row].title
        cell.diaLabel.text = calendars[indexPath.row].dia
        cell.mesLabel.text = calendars[indexPath.row].mes
        cell.tenisImage.image = UIImage(named: calendars[indexPath.row].imagePath)
//        cell.date?.text = calendars[indexPath.row].date
        return cell
    }
    
}


//extension CalendarViewController: UITableViewDelegate {
//    //// Saber em qual celula esta interagindo
////    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
////        print(indexPath.row)
////    }
//}

//cellIdentifier = "ReusableCell"
