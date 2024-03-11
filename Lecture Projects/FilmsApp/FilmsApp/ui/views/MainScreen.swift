//
//  ViewController.swift
//  FilmsApp
//
//  Created by Mehmet Tırpan on 11.03.2024.
//

import UIKit

class MainScreen: UIViewController {

    @IBOutlet weak var filmsCollectionView: UICollectionView!
    
    var filmsList = [Films]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmsCollectionView.delegate = self
        filmsCollectionView.dataSource = self
        
        let f1 = Films(id: UUID(), name: "Django", image: "django", price: 24)
        let f2 = Films(id: UUID(), name: "Interstellar", image: "interstellar", price: 32)
        let f3 = Films(id: UUID(), name: "Inception", image: "inception", price: 16)
        let f4 = Films(id: UUID(), name: "The Hateful Eight", image: "thehatefuleight", price: 28)
        let f5 = Films(id: UUID(), name: "The Pianist", image: "thepianist", price: 18)
        let f6 = Films(id: UUID(), name: "Anadoluda", image: "anadoluda", price: 10)
        filmsList.append(f1)
        filmsList.append(f2)
        filmsList.append(f3)
        filmsList.append(f4)
        filmsList.append(f5)
        filmsList.append(f6)
        
        let design = UICollectionViewFlowLayout()
        design.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10) // collectionView çevresindeki boşluk
        design.minimumLineSpacing = 10 // item lar arası dikey boşluk
        design.minimumInteritemSpacing = 10 // item lar arası yatay boşluk
        
        // 10 x 10 x 10 total boşluk 30 oldu
        let screenWidth = UIScreen.main.bounds.width
//        ekrandaki çizgileirn ve genel öğlerin daha güzel göründüğünü düşündüğüm için 35 e çıkarttım
        let itemWidth = (screenWidth - 35) / 2 // ekran boşluğundan bizim boş alanlarımızı çıkarıp ikiye böldük. iki öğe gözüksün istediğimiz için ikiye böldük
        
        design.itemSize = CGSize(width: itemWidth, height: itemWidth * 1.7)


        filmsCollectionView.collectionViewLayout = design
    }


}

extension MainScreen: UICollectionViewDelegate, UICollectionViewDataSource, CellProtocol {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filmsList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let film = filmsList[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmsCell", for: indexPath) as! FilmsCell
        
        cell.imageViewFilm.image = UIImage(named: film.image!)
        cell.labelPrice.text = "\(film.price!)₺"
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.3
        cell.layer.cornerRadius = 10.0
        
        cell.cellProtocol = self
        cell.indexPath = indexPath
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let film = filmsList[indexPath.row]
        print("\(film.name!) selected")
        performSegue(withIdentifier: "toDetail", sender: film)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail"{
            if let film = sender as? Films {
                let toVC = segue.destination as! DetailPage
                toVC.film = film
            }
        }
    }
    
    func clickAddToCart(indexPath: IndexPath) {
        let film = filmsList[indexPath.row]
        print("\(film.name!) add to cart")
    }
}
