//
//  QuestionsServices.swift
//  Trivia
//
//  Created by Santiago Caraballo on 07/12/2021.
//

import Foundation

struct QuestionsService {
    typealias QuestionsHandler = (_ questions: [Question]) -> Void
    func getQuestions(for categoryID: Int, completion: @escaping QuestionsHandler) {
        let arrayQuestions = Contenido().getQuestions()
        completion(arrayQuestions)
    }
}
