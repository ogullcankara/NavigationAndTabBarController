//
//  ViewController.swift
//  NavigationController
//
//  Created by Ogulcan Kara on 11.07.2022.
//

import UIKit

class ViewController: UIViewController {

    var item1Count = 0, item2Count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       /* self.navigationItem.title = "Başlık kod ile"
        self.navigationItem.prompt = "Açıklama kod ile"
        
        let apperance = UINavigationBarAppearance()
        apperance.backgroundColor = UIColor.systemBlue
        apperance.largeTitleTextAttributes = [.foregroundColor : UIColor.white]
        
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.barStyle = .default
        navigationController?.navigationBar.isTranslucent = true
        
        navigationController?.navigationBar.standardAppearance = apperance
        navigationController?.navigationBar.compactAppearance = apperance
        navigationController?.navigationBar.scrollEdgeAppearance = apperance */
        let apperanceTabBar = UITabBarAppearance()
        apperanceTabBar.backgroundColor = UIColor.systemBlue
        
        colorSet(itemApperance: apperanceTabBar.stackedLayoutAppearance)
        colorSet(itemApperance: apperanceTabBar.inlineLayoutAppearance)
        colorSet(itemApperance: apperanceTabBar.compactInlineLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = apperanceTabBar
        tabBarController?.tabBar.scrollEdgeAppearance = apperanceTabBar
        
        
    }

        
    @IBAction func item1Increase(_ sender: Any) {
        
        if let tabItems = tabBarController?.tabBar.items {
            
            let label1TabBarItem = tabItems[0]
            item1Count += 1
            label1TabBarItem.badgeColor = UIColor.systemOrange
            label1TabBarItem.badgeValue = String(item1Count)
            
        }
        
    }
    
    @IBAction func item2Increase(_ sender: Any) {
        
        if let tabItems = tabBarController?.tabBar.items {
            
            let label1TabBarItem = tabItems[1]
            item2Count += 1

            label1TabBarItem.badgeColor = UIColor.systemCyan
            label1TabBarItem.badgeValue = String(item2Count)
            
        }
        
    }
    
    func colorSet(itemApperance:UITabBarItemAppearance){
        itemApperance.selected.iconColor = UIColor.white
        itemApperance.selected.titleTextAttributes = [.foregroundColor: UIColor.white]
        itemApperance.selected.badgeBackgroundColor = UIColor.white
        itemApperance.selected.badgeTextAttributes = [.foregroundColor: UIColor.systemBlue]
        
        itemApperance.normal.iconColor = UIColor.systemOrange
        itemApperance.normal.titleTextAttributes = [.foregroundColor: UIColor.systemOrange]
        itemApperance.normal.badgeBackgroundColor = UIColor.systemOrange
        itemApperance.normal.badgeTextAttributes = [.foregroundColor: UIColor.white]
    }
    
}

