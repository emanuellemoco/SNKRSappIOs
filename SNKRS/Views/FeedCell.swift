//
//  FeedCell.swift
//  SNKRS
//
//  Created by Emanuelle Moço on 18/02/22.
//

import UIKit

class FeedCell: UITableViewCell {

    
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var tenisImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

