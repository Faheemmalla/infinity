//
//  LevelModel.swift
//  infinity
//
//  Created by faheem yousuf malla on 17/09/25.
//

import SwiftUI
struct Level: Identifiable {
    let id: Int
    let questions: [Question]
    static func ==(lhs: Level, rhs: Level) -> Bool {
        lhs.id == rhs.id}
}
    struct Question {
        let question: String
        let possibleAnswers: [String]
        let answerIndex: Int
}

