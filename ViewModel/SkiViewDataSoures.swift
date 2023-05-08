//
//  SkiViewDataSoures.swift
//  autoLayout
//
//  Created by AndyLin林棋瀚 on 2023/5/3.
//

import Foundation
import UIKit

class SkiViewDataSoures:NSObject,UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SkiTableViewCell", for: indexPath) as! SkiTableViewCell
        
        switch indexPath.row {
        case 0:
            cell.skiLabel.text = "Hockey"
        case 1:
            cell.skiLabel.text = "Snowboarding & Alpine"
        default:
            cell.skiLabel.text = "Olympic Games"
        }
        
        return cell
    }
    
}
