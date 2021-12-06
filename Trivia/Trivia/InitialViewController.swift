//
//  InitialViewController.swift
//  Trivia
//
//  Created by Santiago Caraballo on 01/12/2021.
//

import UIKit

class InitialViewController: UIViewController {
    
    @IBOutlet weak var alkemyLogoStart: UIImageView!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        alkemyLogoStart.layer.cornerRadius = 70
        alkemyLogoStart.layer.borderColor = UIColor.white.cgColor
        alkemyLogoStart.layer.borderWidth = 4
    }
    
    @IBAction func startTriviaTapped(_ sender: Any) {
        if let username = textField.text, !username.isEmpty {
            presentTabBarController()
        
        } else {
            presentNoUsernameAlert()
        }
    }
    
        
    private func presentNoUsernameAlert() {
        let alert = UIAlertController(title: "Alerta", message: "Por favor ingresa un nombre de usuario", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        }
        
    private func presentTabBarController() {
        
        let tabBarController = TabBarViewController()
        tabBarController.modalPresentationStyle = .overFullScreen
        self.present(tabBarController, animated: true, completion: nil)
        
        
        
        
        //let categoriesViewController = CategoriesViewController(nibName: "CategoriesViewController", bundle: nil)
        //let navigationController = UINavigationController(rootViewController: categoriesViewController)
        //navigationController.modalPresentationStyle = .overFullScreen
        //self.present(navigationController, animated: true)
        
    }
    
    
}
