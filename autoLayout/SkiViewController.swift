//
//  SkiViewController.swift
//  autoLayout
//
//  Created by AndyLin林棋瀚 on 2023/5/3.
//

import UIKit

class SkiViewController: UIViewController {

    @IBOutlet weak var skiTableView: UITableView!
    
    //data
    let skiViewDataSoures = SkiViewDataSoures()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSetting()
        // Do any additional setup after loading the view.
    }
    
    func tableViewSetting(){
        print("tableViewSetting")
        skiTableView.dataSource = skiViewDataSoures
        skiTableView.delegate = skiViewDataSoures
        setTableViewHeader()
    }
    
    func setTableViewHeader(){
    let headerView = UIView(frame: CGRect(x: 0, y: 0, width: self.skiTableView.frame.width , height: self.skiTableView.frame.width ))
    let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: self.skiTableView.frame.width , height: self.skiTableView.frame.width ))
    imageView.image = UIImage(named: "Mountain")
    headerView.backgroundColor = UIColor.black
    headerView.addSubview(imageView)
    self.skiTableView.tableHeaderView = headerView
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
