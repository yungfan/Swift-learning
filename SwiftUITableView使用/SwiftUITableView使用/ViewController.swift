//
//  ViewController.swift
//  SwiftUITableView使用
//
//  Created by teacher on 2017/10/23.
//  Copyright © 2017年 teacher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
       
        let tabView = UITableView(frame:UIScreen.main.bounds , style:UITableView.Style.plain)
        tabView.delegate = self
        tabView.dataSource = self
        tabView.tableFooterView = UIView()
        self.view.addSubview(tabView)
        
        
    }
    



}



//扩展类遵循协议
extension ViewController:UITableViewDataSource, UITableViewDelegate{


    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellId:String = "cell"
        
        var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: cellId)
        
        if cell == nil {
            
            cell = UITableViewCell(style:UITableViewCell.CellStyle.default, reuseIdentifier:cellId)
            
        }
        
        cell?.textLabel?.text = "\(indexPath.row)"
        
        return cell!
    }

}

extension ViewController : UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("----------")
    }



}

