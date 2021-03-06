//
//  QuestionViewController.swift
//  Trivia
//
//  Created by Santiago Caraballo on 05/12/2021.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    private var questions = [Question]()
    
    private var currentQuestionIndex = 0
    
    lazy private var viewModel: QuestionViewModel = {
        let viewModel = QuestionViewModel()
        return viewModel
    }()
    
    var categoryID: Int?
    
    override func viewDidLoad() {
        //setCurrentQuestion(for: currentQuestionIndex)
        
        self.getQuestions()
        // Do any additional setup after loading the view.
    }
    
    private func getQuestions() {
        self.viewModel.getQuestions(for: self.categoryID)
    }

    @IBAction func rightAnswerTapped(_ sender: UIButton) {
        //let result = validateCurrentQuestion(answer: true)
        //sendResultMessage(for: result)
    }
    
    
    @IBAction func wrongAnswerTapped(_ sender: UIButton) {
        //let result = validateCurrentQuestion(answer: false)
        //sendResultMessage(for: result)
    }
    
    private func updateQuestion() {
        currentQuestionIndex += 1
        setCurrentQuestion(for: currentQuestionIndex)
    }
    
    private func setCurrentQuestion(for index: Int) {
        if index < questions.count {
            questionLabel.text = questions[index].question
        } else {
            currentQuestionIndex = 0
            questionLabel.text = questions[currentQuestionIndex].question
        }
    }
    
    private func validateCurrentQuestion(answer: Bool) -> Bool {
        questions[currentQuestionIndex].answer == answer
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
