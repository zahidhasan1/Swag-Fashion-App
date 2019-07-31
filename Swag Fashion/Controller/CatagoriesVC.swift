//
//  ViewController.swift
//  Swag Fashion
//
//  Created by ZEUS on 28/7/19.
//  Copyright © 2019 ZEUS. All rights reserved.
//

import UIKit

class CatagoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var catagoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        catagoryTable.dataSource = self
        catagoryTable.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategotyCell") as?  CatagoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else{
            return CatagoryCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let barBtn = UIBarButtonItem()
        barBtn.title = ""
        navigationItem.backBarButtonItem = barBtn
        
        if let productsVC = segue.destination as? ProductsVC{
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category)
        
        }
    }
}

