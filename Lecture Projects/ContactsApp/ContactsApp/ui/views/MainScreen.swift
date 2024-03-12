//
//  ViewController.swift
//  ContactsApp
//
//  Created by Mehmet Tırpan on 8.03.2024.
//

import UIKit

class MainScreen: UIViewController{
    
    
    @IBOutlet weak var serachBar: UISearchBar!
    @IBOutlet weak var contactsTableView: UITableView!
    
    var contactsList = [Contacts]()
    
    var viewModel = MainScreenViewModel() // uygulama ilk çalıştığı anda viewModel nesnesi oluşturuldu ve viewmodel içerisindeki MainScreenViewModel nesnesi oluştu şimdi sıra oradaki kodda
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        Yukarıdaki searchbar outlet'i ile aşağıdaki fonksiyonu birbirine bağlamak için bu işlemi yaptık
        serachBar.delegate = self
        contactsTableView.delegate = self
        contactsTableView.dataSource = self
        
        _ = viewModel.contactsList.subscribe(onNext: {list in
            self.contactsList = list // listeyi aldın içeriği değiştirdin
            self.contactsTableView.reloadData() // listeyi güncelle en sonu getir demek
        })
    }
    
    override func viewWillAppear(_ animated: Bool) {
        viewModel.contactsUpload() // bu kodun amacı kayıt yaptıktan sonra veri tabanındaki en son kişileri aktarmak
        print("Ana sayfaya geri dönüldü")
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
            viewModel.search(searchText: searchText)
        }
    
}

extension MainScreen: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let person = contactsList[indexPath.row] // indexpath sayesinde bütün diziyi sıra sıra ekrana yazdırdık
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsCell") as!
            ContactsCell
        
        cell.labelPersonName.text = person.person_name
        cell.labelPersonNumber.text = person.person_number
        
        return cell
    }
    
    
    // ekrandaki seçilen satırı seçtiğimizi bildirmek ve kullanmak niçin gerekli olan kod
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = contactsList[indexPath.row]
        performSegue(withIdentifier: "toDetail", sender: person)
        tableView.deselectRow(at: indexPath, animated: true) // seçtiğin satırın ekranda seçili kalma durumunu değiştiriyor
    }
    
    // sağdan kaydırma trailing olduğu için onu seçtik
//    style = .destructive yani kırmızı olsun demek
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete"){contextualAction,view,bool in
            let person = self.contactsList[indexPath.row]
            
            let alert = UIAlertController(title: "Delete Operating", message: "\(person.person_name!) should be deleted ", preferredStyle: .actionSheet)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
            alert.addAction(cancelAction)
            
            let yesAction = UIAlertAction(title: "Yes", style: .destructive){ action in
                self.viewModel.delete(person_id: person.person_id!)
            }
            
            alert.addAction(yesAction)
            
            self.present(alert, animated: true)
            
            
        }
        let swipeActions = UISwipeActionsConfiguration(actions: [deleteAction])
        return swipeActions

    }
}
