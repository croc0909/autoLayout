//
//  SearchViewController.swift
//  autoLayout
//
//  Created by AndyLin林棋瀚 on 2023/5/1.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchTableView: UITableView!
    
    //data
    let searchViewDataSoures = SearchViewDataSoures()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewSetting()
    }
    
    func tableViewSetting(){
        searchTableView.dataSource = searchViewDataSoures
        searchTableView.delegate = searchViewDataSoures
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

