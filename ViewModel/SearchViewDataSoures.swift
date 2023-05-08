//
//  SearchViewModel.swift
//  autoLayout
//
//  Created by AndyLin林棋瀚 on 2023/5/2.
//

import Foundation
import UIKit

class SearchViewDataSoures:NSObject,UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell", for: indexPath) as! SearchTableViewCell
        
        cell.movieImageView.image = UIImage(named: searchData[indexPath.row].imageName)
        cell.movieNameLabel.text = searchData[indexPath.row].contentText
        cell.movieTypeLabel.text = searchData[indexPath.row].contentType
        return cell
    }
    
    
}
