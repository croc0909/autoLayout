//
//  TestCollectionViewCell.swift
//  autoLayout
//
//  Created by AndyLin林棋瀚 on 2023/5/4.
//

import UIKit

class TestCollectionViewCell: UICollectionViewCell {
    static let reuseIdentifier = "\(TestCollectionViewCell.self)"
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var uiLabel: UILabel!
}
