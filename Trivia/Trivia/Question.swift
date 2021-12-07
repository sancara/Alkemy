//
//  questiobs.swift
//  Trivia
//
//  Created by Santiago Caraballo on 06/12/2021.
//

import Foundation

struct Question: Codable {
    var question: String
    var answer: Bool
}


struct Contenido {
    

    func getQuestions() -> [Question] {
        return [
            Question(question: "Argentina tiene 3 copas del Mundo", answer: false),
            Question(question: "La capital de Chile es Santiago", answer: true),
            Question(question: "El dia tiene 24 horas", answer: true),
            Question(question: "El mes de Junio tiene 31 dias", answer: false),
            Question(question: "2 + 2 * 2 = 8", answer: false),
            Question(question: "1024 Terabytes = 1 Petabyte", answer: true),
            Question(question: "La glandula tiroides está en el cerebro", answer: false),
            Question(question: "El intestino delgado mide entre 5 y 8 metros", answer: true),
            Question(question: "El primer pais en organizar un Mundial de Futbol fue Uruguay", answer: true),
            Question(question: "La gran muralla china es visible desde la luna", answer: false),
            Question(question: "Rusia cuenta con 11 zonas horarias diferentes", answer: true)
        ]
    }

}
