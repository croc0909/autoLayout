//
//  SkiCollectionViewCell.swift
//  autoLayout
//
//  Created by AndyLin林棋瀚 on 2023/5/3.
//

import UIKit

class SkiCollectionViewCell: UICollectionViewCell {
    static let reuseIdentifier = "\(SkiCollectionViewCell.self)"
    
    @IBOutlet weak var skiImageView: UIImageView!
    @IBOutlet weak var skiGameLabel: UILabel!
    @IBOutlet weak var skiGameTypeLabel: UILabel!
    
}
