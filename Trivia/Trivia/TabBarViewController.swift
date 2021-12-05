//
//  TabBarViewController.swift
//  Trivia
//
//  Created by Santiago Caraballo on 05/12/2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstTabTitle = "Categories"
        let firstTabImage = UIImage(systemName: "list.dash")
        
        let firstTabViewController = CategoriesViewController(nibName: "CategoriesViewController", bundle: nil)
        firstTabViewController.title = firstTabTitle
        
        let firstTabNavigationController = UINavigationController(rootViewController: firstTabViewController)
        firstTabNavigationController.tabBarItem = UITabBarItem(title: firstTabTitle, image: firstTabImage, selectedImage: nil)
        
        
        let secondViewController = QuestionViewController(nibName: "QuestionViewController", bundle: nil)
        secondViewController.title = "Random"
        
        let secondTabNavigationController = UINavigationController(rootViewController: secondViewController)
        secondTabNavigationController.tabBarItem = UITabBarItem(title: "Random", image: UIImage(systemName: "shuffle"), selectedImage: nil)
        
        
        
        viewControllers = [firstTabNavigationController, secondTabNavigationController]
        
    }
}
