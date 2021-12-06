//
//  QuestionViewModel.swift
//  Trivia
//
//  Created by Santiago Caraballo on 06/12/2021.
//

import Foundation
class QuestionViewModel {
    private let questionsService: QuestionsService
    private var questions = [Question]()
    
    init(service: QuestionsService) {
        self.questionsService = service
    }
    
    func getQuestions(for categoryID: Int, completion: @escaping() -> Void) {
        questionsService.getQuestions(for: categoryID) {[weak self] questions in
            guard let strongSelf = self else { return }
            
            strongSelf.questions = questions
            completion()
        }
    }
    
}
