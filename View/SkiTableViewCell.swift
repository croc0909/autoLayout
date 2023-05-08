//
//  SkiTableViewCell.swift
//  autoLayout
//
//  Created by AndyLin林棋瀚 on 2023/5/3.
//

import UIKit

class SkiTableViewCell: UITableViewCell {

    
    @IBOutlet weak var skiLabel: UILabel!
    @IBOutlet weak var skiCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setCollectionView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCollectionView(){
        print("setCollectionView")
        skiCollectionView.delegate = self
        skiCollectionView.dataSource = self
        
        setCollectionViewCellSize()
    }
    
    func setCollectionViewCellSize() {
        let itemSpace: Double = 4 //間距
        let columnCount: Double = 2.5 // 每行 cell 的數量
        let flowLayout = skiCollectionView.collectionViewLayout as? UICollectionViewFlowLayout
        let width = floor((skiCollectionView.bounds.width - itemSpace * (columnCount-1)) / columnCount)
        flowLayout?.itemSize = CGSize(width: width + 100, height: width)
        flowLayout?.estimatedItemSize = .zero
        flowLayout?.minimumInteritemSpacing = itemSpace // cell 左右間距
        flowLayout?.minimumLineSpacing = itemSpace // cell 上下間距
        
    }
}

extension SkiTableViewCell:UICollectionViewDelegate,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return skiData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:SkiCollectionViewCell.reuseIdentifier , for: indexPath) as! SkiCollectionViewCell
        cell.skiImageView.image = UIImage(named: skiData[indexPath.row].imageName)
        cell.skiGameLabel.text = skiData[indexPath.row].gameName
        cell.skiGameTypeLabel.text = skiData[indexPath.row].gameType
        return cell
    }
    
    
}

