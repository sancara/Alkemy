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
        if textField.hasText {
            let vc = QuestionViewController(nibName: "QuestionViewControler", bundle: nil)
            self.present(vc, animated: true)
        
        } else {
            print("Ingrese un usuario")
        }
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
