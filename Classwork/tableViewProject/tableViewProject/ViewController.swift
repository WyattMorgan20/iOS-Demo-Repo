//
//  ViewController.swift
//  tableViewProject
//
//  Created by Morgan,Wyatt J on 4/8/25.
//

import UIKit

class Product {
    var productName: String
    var productDescription: String
    
    // Constructor/inititiaizer for product item (like Java)
    init(productName: String, productDescription: String) {
        self.productName = productName
        self.productDescription = productDescription
    }
} // end of product class

// fix for tableViewOL.dataSource = self line and line following it:
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the productArray count
        return productArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create a cell
        let cell = tableViewOL.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath)
        
        // Populate the cell
        cell.textLabel?.text = productArray[indexPath.row].productName
        
        // Return the cell
        return cell
        
    }
    

    @IBOutlet weak var tableViewOL: UITableView!
    
    var productArray = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewOL.dataSource = self
        tableViewOL.delegate = self
        
        // create objects from the product class (based on constructor/initializer like in java) AND appending them to the created array
        let product1 = Product(productName: "iPhone 13", productDescription: "This is a new iPhone 13")
        productArray.append(product1)
        
        let product2 = Product(productName: "MacBook Pro", productDescription: "This is a new MacBook Pro")
        productArray.append(product2)
        
        let product3 = Product(productName: "AirPods Pro", productDescription: "This is a new AirPods Pro")
        productArray.append(product3)
        
        let product4 = Product(productName: "Apple Watch Series 8", productDescription: "This is a new Apple Watch Series 8")
        productArray.append(product4)
        
        let product5 = Product(productName: "ipad Pro 11-inch", productDescription: "This is a new ipad Pro 11-inch")
        productArray.append(product5)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if transition == "ProductsSegue" {
            let destination = segue.destination as! ProductsViewController
            
            destination.product = productArray[(tableViewOL.indexPathForSelectedRow?.row)!]
        }
    }


}

