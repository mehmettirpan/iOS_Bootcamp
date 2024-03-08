//
//  MainScreenVC.swift
//  ThirdAppInBootcamp
//
//  Created by Mehmet Tırpan on 24.02.2024.
//

import UIKit

class MainScreenVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let tabItems = tabBarController?.tabBar.items{
            let mainScreenItem = tabItems[0] //nsıfırıncı indeke eşit demek yani birinci tuş gibi
            let settingsItem = tabItems[1]
            settingsItem.badgeValue = "Badge" // badge değerinin yerine yazdık ekranda badge i görmek daha kolay olur
            mainScreenItem.badgeValue = "1"
        }
        
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.systemGray  // tabbarın arkaplan rengini ayarladık
        
        colorChange(itemAppearance: appearance.stackedLayoutAppearance)
        colorChange(itemAppearance: appearance.inlineLayoutAppearance)
        colorChange(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
        
        
        let navigationBarAppearance = UINavigationBarAppearance()
        self.navigationItem.title = "Third App"
        navigationBarAppearance.backgroundColor = UIColor(named: "systemGray")
        navigationBarAppearance.titleTextAttributes = [.font: UIFont(name: "Savoye LET", size: 22)]
        
        navigationController?.navigationBar.standardAppearance = navigationBarAppearance
        navigationController?.navigationBar.compactAppearance = navigationBarAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navigationBarAppearance
        
    }


    func colorChange(itemAppearance:UITabBarItemAppearance){
//        seçili olan sayfanın yani item'ın durumu
        
        itemAppearance.selected.iconColor = UIColor.systemRed
        itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemRed]
        itemAppearance.selected.badgeBackgroundColor = UIColor.systemMint
        
//        Seçili olmayan yani diğer sayfaların diğer item'ların durumu
        
        itemAppearance.normal.iconColor = UIColor.white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
        itemAppearance.normal.badgeBackgroundColor = UIColor.lightGray
    }

    
    
    
    
}
