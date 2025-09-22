//
//  ContentView.swift
//  infinity
//
//  Created by faheem yousuf malla on 17/09/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedLevel = 0
    @State private var questionIndex = 0
    
    let levels: [Level] = [
        Level(id: 0, questions:[
            Question(question: "What color is the sky?", possibleAnswers: ["Blue", "Green", "Red"], answerIndex: 0),
            Question(question: "What is 2 + 2?", possibleAnswers: ["3", "4", "5"], answerIndex: 1),
            Question(question: "Which animal barks?", possibleAnswers: ["Cat", "Dog", "Cow"], answerIndex: 1)
        ]),
        
        Level(id: 1, questions:[
            Question(question: "What fruit is yellow?", possibleAnswers: ["Apple", "Banana", "Grape"], answerIndex: 1),
            Question(question: "What is the capital of France?", possibleAnswers: ["Paris", "Rome", "Berlin"], answerIndex: 0),
            Question(question: "What do bees produce?", possibleAnswers: ["Milk", "Honey", "Water"], answerIndex: 1)
        ]),
        
        Level(id: 2, questions:[
            Question(question: "What planet do we live on?", possibleAnswers: ["Mars", "Earth", "Venus"], answerIndex: 1),
            Question(question: "What is H2O?", possibleAnswers: ["Oxygen", "Water", "Hydrogen"], answerIndex: 1),
            Question(question: "What grows on trees?", possibleAnswers: ["Stone", "Fruit", "Sand"], answerIndex: 1)
        ]),
        
        Level(id: 3, questions:[
            Question(question: "Which direction is the sun in the morning?", possibleAnswers: ["East", "West", "South"], answerIndex: 0),
            Question(question: "What do you wear on your feet?", possibleAnswers: ["Hat", "Shoes", "Gloves"], answerIndex: 1),
            Question(question: "Which one is a vegetable?", possibleAnswers: ["Carrot", "Cake", "Ice cream"], answerIndex: 0)
        ]),
        
        Level(id: 4, questions:[
            Question(question: "What color are leaves?", possibleAnswers: ["Red", "Green", "Blue"], answerIndex: 1),
            Question(question: "What do you use to write?", possibleAnswers: ["Pen", "Plate", "Bottle"], answerIndex: 0),
            Question(question: "What is frozen water called?", possibleAnswers: ["Steam", "Ice", "Rain"], answerIndex: 1)
        ]),
        //
        Level(id: 5, questions:[
            Question(question: "What color is the sky?", possibleAnswers: ["Blue", "Green", "Red"], answerIndex: 0),
            Question(question: "What is 2 + 2?", possibleAnswers: ["3", "4", "5"], answerIndex: 1),
            Question(question: "Which animal barks?", possibleAnswers: ["Cat", "Dog", "Cow"], answerIndex: 1)
        ]),
        
        Level(id: 6, questions:[
            Question(question: "What fruit is yellow?", possibleAnswers: ["Apple", "Banana", "Grape"], answerIndex: 1),
            Question(question: "What is the capital of France?", possibleAnswers: ["Paris", "Rome", "Berlin"], answerIndex: 0),
            Question(question: "What do bees produce?", possibleAnswers: ["Milk", "Honey", "Water"], answerIndex: 1)
        ]),
        
        Level(id: 7, questions:[
            Question(question: "What planet do we live on?", possibleAnswers: ["Mars", "Earth", "Venus"], answerIndex: 1),
            Question(question: "What is H2O?", possibleAnswers: ["Oxygen", "Water", "Hydrogen"], answerIndex: 1),
            Question(question: "What grows on trees?", possibleAnswers: ["Stone", "Fruit", "Sand"], answerIndex: 1)
        ]),
        
        Level(id: 8, questions:[
            Question(question: "Which direction is the sun in the morning?", possibleAnswers: ["East", "West", "South"], answerIndex: 0),
            Question(question: "What do you wear on your feet?", possibleAnswers: ["Hat", "Shoes", "Gloves"], answerIndex: 1),
            Question(question: "Which one is a vegetable?", possibleAnswers: ["Carrot", "Cake", "Ice cream"], answerIndex: 0)
        ]),
        
        Level(id: 9, questions:[
            Question(question: "What color are leaves?", possibleAnswers: ["Red", "Green", "Blue"], answerIndex: 1),
            Question(question: "What do you use to write?", possibleAnswers: ["Pen", "Plate", "Bottle"], answerIndex: 0),
            Question(question: "What is frozen water called?", possibleAnswers: ["Steam", "Ice", "Rain"], answerIndex: 1)
        ]),
        Level(id: 10, questions:[
            Question(question: "What color is the sky?", possibleAnswers: ["Blue", "Green", "Red"], answerIndex: 0),
            Question(question: "What is 2 + 2?", possibleAnswers: ["3", "4", "5"], answerIndex: 1),
            Question(question: "Which animal barks?", possibleAnswers: ["Cat", "Dog", "Cow"], answerIndex: 1)
        ]),
        
        Level(id: 11, questions:[
            Question(question: "What fruit is yellow?", possibleAnswers: ["Apple", "Banana", "Grape"], answerIndex: 1),
            Question(question: "What is the capital of France?", possibleAnswers: ["Paris", "Rome", "Berlin"], answerIndex: 0),
            Question(question: "What do bees produce?", possibleAnswers: ["Milk", "Honey", "Water"], answerIndex: 1)
        ]),
        
        Level(id: 12, questions:[
            Question(question: "What planet do we live on?", possibleAnswers: ["Mars", "Earth", "Venus"], answerIndex: 1),
            Question(question: "What is H2O?", possibleAnswers: ["Oxygen", "Water", "Hydrogen"], answerIndex: 1),
            Question(question: "What grows on trees?", possibleAnswers: ["Stone", "Fruit", "Sand"], answerIndex: 1)
        ]),
        
        Level(id: 13, questions:[
            Question(question: "Which direction is the sun in the morning?", possibleAnswers: ["East", "West", "South"], answerIndex: 0),
            Question(question: "What do you wear on your feet?", possibleAnswers: ["Hat", "Shoes", "Gloves"], answerIndex: 1),
            Question(question: "Which one is a vegetable?", possibleAnswers: ["Carrot", "Cake", "Ice cream"], answerIndex: 0)
        ]),
        
        Level(id: 14, questions:[
            Question(question: "What color are leaves?", possibleAnswers: ["Red", "Green", "Blue"], answerIndex: 1),
            Question(question: "What do you use to write?", possibleAnswers: ["Pen", "Plate", "Bottle"], answerIndex: 0),
            Question(question: "What is frozen water called?", possibleAnswers: ["Steam", "Ice", "Rain"], answerIndex: 1)
        ]),
        //
        Level(id: 15, questions:[
            Question(question: "What color is the sky?", possibleAnswers: ["Blue", "Green", "Red"], answerIndex: 0),
            Question(question: "What is 2 + 2?", possibleAnswers: ["3", "4", "5"], answerIndex: 1),
            Question(question: "Which animal barks?", possibleAnswers: ["Cat", "Dog", "Cow"], answerIndex: 1)
        ]),
        
        Level(id: 16, questions:[
            Question(question: "What fruit is yellow?", possibleAnswers: ["Apple", "Banana", "Grape"], answerIndex: 1),
            Question(question: "What is the capital of France?", possibleAnswers: ["Paris", "Rome", "Berlin"], answerIndex: 0),
            Question(question: "What do bees produce?", possibleAnswers: ["Milk", "Honey", "Water"], answerIndex: 1)
        ]),
        
        Level(id: 17, questions:[
            Question(question: "What planet do we live on?", possibleAnswers: ["Mars", "Earth", "Venus"], answerIndex: 1),
            Question(question: "What is H2O?", possibleAnswers: ["Oxygen", "Water", "Hydrogen"], answerIndex: 1),
            Question(question: "What grows on trees?", possibleAnswers: ["Stone", "Fruit", "Sand"], answerIndex: 1)
        ]),
        
        Level(id: 18, questions:[
            Question(question: "Which direction is the sun in the morning?", possibleAnswers: ["East", "West", "South"], answerIndex: 0),
            Question(question: "What do you wear on your feet?", possibleAnswers: ["Hat", "Shoes", "Gloves"], answerIndex: 1),
            Question(question: "Which one is a vegetable?", possibleAnswers: ["Carrot", "Cake", "Ice cream"], answerIndex: 0)
        ]),
        
        Level(id: 19, questions:[
            Question(question: "What color are leaves?", possibleAnswers: ["Red", "Green", "Blue"], answerIndex: 1),
            Question(question: "What do you use to write?", possibleAnswers: ["Pen", "Plate", "Bottle"], answerIndex: 0),
            Question(question: "What is frozen water called?", possibleAnswers: ["Steam", "Ice", "Rain"], answerIndex: 1)
        ])
        
    ]
    
    var body: some View {
        NavigationView {
            LevelsProgressView(levels: levels, selectedLevel: $selectedLevel, questionIndex: $questionIndex)
                // .navigationBarTitle("Infinity")
            // CHange i did with gpt
            // i add the below code
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Conquer Every Level")
                            .font(.system(size: 24, weight: .heavy, design: .rounded))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.indigo, .purple],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .shadow(color: .black.opacity(0.2), radius: 2, x: 0, y: 1)
                            .padding(.top, 2)
                    }
                }
            // i added the above code
            // change I did gpt
        }
        .tint(.indigo)
    }
}

#Preview {
    ContentView()
}

