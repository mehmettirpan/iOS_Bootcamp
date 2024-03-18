//
//  ViewController.swift
//  HW6 App Interface Clone
//
//  Created by Mehmet Tırpan on 17.03.2024.
//

import UIKit

class MainScreen: UIViewController{

    @IBOutlet weak var aramaTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var item: UIBarButtonItem!
    
    var kategoriListesi = [Kategoriler]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appearance = UINavigationBarAppearance()
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white, .font: UIFont.boldSystemFont(ofSize: 18)]
        appearance.backgroundColor = UIColor(named: "mavi")
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        
        // Sağ taraftaki buton için UIBarButtonItem oluşturun
        let rightButton = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(rightButtonTapped))

        // Butonun rengini belirleyin
        rightButton.tintColor = UIColor.white // İstediğiniz rengi burada belirleyin

        // navigationItem'a butonu atayın
        navigationItem.rightBarButtonItem = rightButton
        
        let leftImage = UIImage(named: "sahibinden")
        let leftButton = UIBarButtonItem(image: leftImage, style: .plain, target: self, action: #selector(leftButtonTapped))


        
        
        
        
        aramaTableView.dataSource = self
        aramaTableView.delegate = self
        
        let emlakKategori = Kategoriler(kategori_id: UUID(), kategori_name: "Emlak", aciklama_name: "Konut, İş Yeri, Arsa, Konut Projeleri, Bina, Devre Mülk", image: "house")
        let vasıtaKategori = Kategoriler(kategori_id: UUID(), kategori_name: "Vasıta", aciklama_name: "Otomobil, Arazi, SUV & Pickup, Motosiklet, Minivan, Panelvan", image: "house")
        let yedekParcaKategori = Kategoriler(kategori_id: UUID(), kategori_name: "Yedek Parça, Aksesuar, Donanım & Tuning", aciklama_name: "Otomotiv Ekipmanlari, Motosiklet Ekipmanlari, Deniz Aracı Ekipmanları", image: "house")
        let ikinciElKategori = Kategoriler(kategori_id: UUID(), kategori_name: "İkinci El ve Sıfır Alışveriş", aciklama_name: "Bilgisayar, Cep Telefonu, Fotoğraf & Kamera", image: "house")
        let isMakineleriKategori = Kategoriler(kategori_id: UUID(), kategori_name: "İş Makineleri & Sanayi", aciklama_name: "I§ Makineleri, Tarim Makineleri, Sanayi, Elektrik & Enerji", image: "house")
        let ustaKategori = Kategoriler(kategori_id: UUID(), kategori_name: "Ustalar ve Hizmetler", aciklama_name: "Konut, İş Yeri, Arsa, Konut Projeleri, Bina, Devre Mülk", image: "house")
        let ozelDersKategori = Kategoriler(kategori_id: UUID(), kategori_name: "Özel Ders Verenler", aciklama_name: "Konut, İş Yeri, Arsa, Konut Projeleri, Bina, Devre Mülk", image: "house")
        let isIlanlarıKategori = Kategoriler(kategori_id: UUID(), kategori_name: "İş İlanları", aciklama_name: "Konut, İş Yeri, Arsa, Konut Projeleri, Bina, Devre Mülk", image: "house")
        let yardımcıKategori = Kategoriler(kategori_id: UUID(), kategori_name: "Yardımcı Arayanlar", aciklama_name: "Konut, İş Yeri, Arsa, Konut Projeleri, Bina, Devre Mülk", image: "house")
        let hayvanKategori = Kategoriler(kategori_id: UUID(), kategori_name: "Hayvanlar Alemi", aciklama_name: "Konut, İş Yeri, Arsa, Konut Projeleri, Bina, Devre Mülk", image: "house")
        
        kategoriListesi.append(emlakKategori)
        kategoriListesi.append(vasıtaKategori)
        kategoriListesi.append(yedekParcaKategori)
        kategoriListesi.append(ikinciElKategori)
        kategoriListesi.append(isMakineleriKategori)
        kategoriListesi.append(ozelDersKategori)
        kategoriListesi.append(isIlanlarıKategori)
        kategoriListesi.append(yardımcıKategori)
        kategoriListesi.append(hayvanKategori)


        item.image = UIImage(named: "sahibinden")
    }

    // Selector olarak kullanılacak fonksiyon
    @objc func rightButtonTapped() {
        // Butona tıklandığında yapılacak işlemler burada gerçekleştirilir.
    }
    // Selector olarak kullanılacak fonksiyon
    @objc func leftButtonTapped() {
        // Butona tıklandığında yapılacak işlemler burada gerçekleştirilir.
    }
    
    
}

extension MainScreen: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kategoriListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kategori = kategoriListesi[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "aramaHucre") as! AramaHucre
        
        cell.kategoriBaslik.text = kategori.kategori_name
        cell.kategoriDetay.text = kategori.aciklama_name
        cell.kategoriLogo.image = UIImage(named: kategori.image!)
        
        return cell
    }
    
    
   
}
