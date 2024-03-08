//
//  ViewController.swift
//  ContactsApp
//
//  Created by Mehmet Tırpan on 8.03.2024.
//

import UIKit

class MainScreen: UIViewController{
    
    
    @IBOutlet weak var serachBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        Yukarıdaki searchbar outlet'i ile aşağıdaki fonksiyonu birbirine bağlamak için bu işlemi yaptık
        serachBar.delegate = self
        
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail"{
            if let person = sender as? Contacts {
                let toVC = segue.destination as! DetailPerson
                toVC.person = person
            }
        }
    }
    

    
}

// ana sayfa class ını genişlettik sayfadaki karışıklığı azaltmak adına
extension MainScreen: UISearchBarDelegate {
    //    search bar için fonksiyon her yazdığımızı sonuç verecek bize
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            print("Search Person: \(searchText)")
        }
    
}
