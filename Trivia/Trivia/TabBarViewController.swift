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
    }
}
