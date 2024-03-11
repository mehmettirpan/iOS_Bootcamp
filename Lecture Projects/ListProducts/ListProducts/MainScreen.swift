//
//  ViewController.swift
//  ListProducts
//
//  Created by Mehmet Tırpan on 11.03.2024.
//

import UIKit

class MainScreen: UIViewController {

    @IBOutlet weak var productsTableView: UITableView!
    
    var productsList = [Products]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productsTableView.delegate = self
        productsTableView.dataSource = self
        
        let p1 = Products(id: UUID(), name: "Macbook Pro 14", image: "bilgisayar", price: 1499)
        let p2 = Products(id: UUID(), name: "iPhone 13", image : "telefon", price: 999)
        let p3 = Products(id: UUID(), name: "Rayban Club Master", image : "gozluk", price: 100)
        let p4 = Products(id: UUID(), name: "Sony ZX Series", image : "kulaklik", price: 1470)
        let p5 = Products(id: UUID(), name: "Gio Armani", image : "parfum", price: 150)
        let p6 = Products(id: UUID(), name: "Casio X Series", image : "saat", price: 200)
        let p7 = Products(id: UUID(), name: "Dyson V8", image : "supurge", price: 450)
        productsList.append(p1)
        productsList.append (p2)
        productsList.append (p3)
        productsList.append(p4)
        productsList.append(p5)
        productsList.append (p6)
        productsList.append (p7)
        
        productsTableView.separatorColor = UIColor(named: "backround") // ürünleri listelendiğinde arada kalan separotörü gizlemek için backround color ile aynı renk yaptık
    }


}


extension MainScreen: UITableViewDelegate, UITableViewDataSource, CellProtocol{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let product = productsList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "productsCell") as! ProductsCell
        
        cell.imageViewProduct.image = UIImage(named: product.image!)
        cell.labelProductName.text = product.name
        cell.labelProductPrice.text = "\(product.price!)$"
        
        cell.backgroundColor = UIColor(named: "backround") // Hücre arkaplan rengini değiştirdik
        cell.cellBackround.layer.cornerRadius = 10.0 // hücrelerin köşe değerleri
        
        
        cell.cellProtocol = self
        cell.indexPath = indexPath
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let product = productsList[indexPath.row]
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete"){
            UIContextualAction,view,bool in // contextual kendisini yani contextualaction ı temsil ediyor, view tasarımı temsil ediyor, bool tıklanıp tıklanmadığını bzie söylüyor
            print("\(product.name!) deleted")
        }
        
        let editAction = UIContextualAction(style: .normal, title: "Edit"){
            UIContextualAction,view,bool in // contextual kendisini yani contextualaction ı temsil ediyor, view tasarımı temsil ediyor, bool tıklanıp tıklanmadığını bzie söylüyor
            print("\(product.name!) edited")
        }
        
        return UISwipeActionsConfiguration(actions: [deleteAction,editAction])
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true) // seçilen satırın seçili pozisyonda kalmasını engelliyor
        
        let product = productsList[indexPath.row]
//        print("\(product.name!) selected")
        performSegue(withIdentifier: "toDetail", sender: product)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail"{
            if let product = sender as? Products {
                let toVC = segue.destination as! DetailPage
                toVC.product = product
            }
        }
    }
    
    func clickedAddToCart(indexPath: IndexPath) {
        let product = productsList[indexPath.row]
        print("\(product.name!) add to cart")
    }
}
