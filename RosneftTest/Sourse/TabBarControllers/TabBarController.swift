//
//  UITabBarController.swift
//  RosneftTest
//
//  Created by admin on 22.11.2023.
//

import Foundation
import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        setupTabBarController()
        setupTabBarViewControllers()
    }
    
    func setupTabBarController() {
        tabBar.tintColor = .black
        tabBar.backgroundColor = .white
    }
    
    func setupTabBarViewControllers() {
        
        let mainViewController = MainViewController()
        let mainItem = UITabBarItem(title: "Расчеты",
                                    image: UIImage(systemName: "heart"),
                                    selectedImage: UIImage(systemName: "heart.fill"))
        mainViewController.tabBarItem = mainItem
        
        let twoViewController = TwoViewController()
        let twoItem = UITabBarItem(title: "?????",
                                    image: UIImage(systemName: "heart"),
                                    selectedImage: UIImage(systemName: "heart.fill"))
        twoViewController.tabBarItem = twoItem
        
        let threeViewController = ThreeViewController()
        let threeItem = UITabBarItem(title: "?????",
                                    image: UIImage(systemName: "heart"),
                                    selectedImage: UIImage(systemName: "heart.fill"))
        threeViewController.tabBarItem = threeItem
        
        let controllers = [mainViewController, twoViewController, threeViewController]
        self.setViewControllers(controllers, animated: true)
    }
    
}
