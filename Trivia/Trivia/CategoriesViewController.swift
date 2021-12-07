//
//  CategoriesViewController.swift
//  Trivia
//
//  Created by Santiago Caraballo on 05/12/2021.
//

//categories api url: https://opentdb.com/api_category.php

import UIKit

class CategoriesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var viewModel: CategoriesViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel = CategoriesViewModel(categoriesService: CategoriesService())
        tableView.delegate = self
        tableView.dataSource = self
        getCategories()
//        self.tableView.dataSource = self
//        self.tableView.delegate = self
//
//        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
//        getCategories()
   }
    private func getCategories() {
        viewModel?.getCategories(completion: {[weak self] in
            self?.tableView.reloadData()
    })
}
}
    extension CategoriesViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel?.categories.count ?? 0
    }
//
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
       cell.textLabel?.text = viewModel?.categories[indexPath.row].name
       return cell
    }
//
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if let category = viewModel?.categories[indexPath.row] {
            showQuestions(for: category)
        }
      }
    
        
        
        private func showQuestions(for category: Category) {
            let questionsViewController = QuestionViewController(nibName: "QuestionViewController", bundle: nil)
            questionsViewController.title = category.name
            questionsViewController.categoryID = category.id
        
            navigationController?.pushViewController(questionsViewController, animated: true)
        }
//
}
