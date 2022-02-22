//
//  CalendarCell.swift
//  SNKRS
//
//  Created by Emanuelle Moço on 18/02/22.
//

import UIKit

class CalendarCell: UITableViewCell {

    @IBOutlet weak var diaLabel: UILabel!
    @IBOutlet weak var mesLabel: UILabel!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var tenisImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
