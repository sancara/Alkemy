//
//  QuestionViewModel.swift
//  Trivia
//
//  Created by Santiago Caraballo on 06/12/2021.
//

import Foundation

class QuestionViewModel {
    private let questionsService = QuestionsService()
    private var questions = [Question]()
    
    func getQuestions(for categoryID: Int?) {
        guard let categoryID = categoryID else {
            return
        }
    
        self.questionsService.getQuestions(for: categoryID) { questions in
            self.questions = questions
        }
       
    }
    
}
