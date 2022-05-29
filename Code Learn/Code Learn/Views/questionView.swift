//
//  questionView.swift
//  Code Learn
//
//  Created by Harper Bledsoe on 5/27/22.
//

import SwiftUI

struct questionView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var userAnswer: String = ""
    
    var swiftQuestions: Array = ["What do you put before a variable name to make it a constant value?",
                                 "What is the keyword to start a function?",
                                 "What is the type that stores a variable of a number with a decimal?",
                                 "What is the keyword needed to declare a changeable variable?",
                                 "What do you reference before declaring a variable to save it on App Storage? (Hint: It begins with an @)",
                                 "What is the type of variable that stores a whole number?",
                                 "What is the type of variable that stores a true / false statement?"]
    
    
    //: MARK: CHANGE Q RANGE HERE
    @State var questionNum: Int = Int.random(in: 0...6)
    
    
    @State var isQuestionWrong: Bool = false
    
    @State var isQuestionRight: Bool = false
    
    @State private var isAnimating: Bool = false
    
    
    //: MARK: START OF BODY

    var body: some View {
        
        
        
        NavigationView{
            
            
            
            VStack(spacing: 30){
                
                
                //: MARK: TITLE
                HStack{
                    
                    GroupBox {
                        
                        HStack {
                            
                            if isQuestionWrong == false{
                                
                                Image(systemName: "circle")
                                    .foregroundColor(Color(red: 254/255, green: 110/255, blue: 48/255))
                                    .scaleEffect(isAnimating ? 1.0 : 0.5)
                                
                            }
                            
                            else if isQuestionWrong == true {
                                
                                Image(systemName: "xmark.app")
                                    .foregroundColor(Color.red)
                                    .scaleEffect(isAnimating ? 1.0 : 0.5)
                                
                            }
                            
                            
                            Text("Swift")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 254/255, green: 110/255, blue: 48/255))
                            
                            Image(systemName: "swift")
                                .foregroundColor(Color(red: 254/255, green: 110/255, blue: 48/255))
                            
                        
                        
                        }//hstack -- TITLE
                        
                        
                    
                    }//gbox -- TITLE
                    .offset(y: isAnimating ? 0 : -10)
                    
                    
                    
                }//hstack -- title
                
                
                
                
                
                //: MARK: QUESTION TEXT
                Text(swiftQuestions[questionNum])
                    .font(.headline)
                
                
                
                
                Spacer()
                
                
                
                
                //: MARK: NEXT BUTTON
                if isQuestionRight == true {
                    
                    Button(action: {
                        
                        
                        self.randomInt()
                        
                        isQuestionRight = false
                        
                        userAnswer = ""
                        
                        
                    }, label: {
                        
                        
                        Text("Next")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.horizontal, 7)
                            .foregroundColor(Color(red: 254/255, green: 110/255, blue: 48/255))
                            .padding(8)
                            
                            
                        
                        
                        
                    })
                    
                    
                }//if
                
                else if isQuestionRight == false{
                    
                    EmptyView()
                    
                }
                
                
                
                //: MARK: TEXT FIELD BOX
                
                GroupBox(){
                    
                    HStack{
                        
                        
                        //X BUTTON IS FALSE
                        if isQuestionRight == false {
                            
                            Button(action: {
                                
                                userAnswer = ""
                                
                                isQuestionWrong = false
                                
                            }, label: {
                                
                                Image(systemName: "xmark")
                                    .padding(.trailing, 10)
                                
                                
                            })
                            
                        }
                        
                        //CHECK IMAGE IF RIGHT
                        else if isQuestionRight == true {
                            
                            Image(systemName: "checkmark")
                                .padding(.trailing, 10)
                            
                            
                        }
                        
                        // TEXT FIELD
                        TextField("Type answer here", text: $userAnswer)
                            .onSubmit {
                                
                                isQuestionWrong = false

                                checkIfCorrect()
                                
                            }//textfeild
                        
                        
                        
                    }//hstack
                    
                }//GROUP BOX FOR TEXT FIELD
                .padding(.bottom, 35)
                
                
                
                
                
            }//: MARK: MAIN VSTACK END MODIFIERS
            .padding(.horizontal, 25)
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                
                Image(systemName: "xmark")
                    .foregroundColor(.primary)
                
            }))
            .onAppear{
                
                withAnimation(.easeOut(duration: 0.5)){
                    
                    isAnimating = true
                    
                }
                
            }
            
            //: MARK: END OF MAIN VSTACK MODIFIERS

        
        }//END OF NAVIGATION
        
        
    }//body
    
    //: MARK: END OF BODY
    
    
    
    
    
    
    
    
    //: MARK: CHECK IF CORRECT FUNC
    
    func checkIfCorrect(){
        
        
        //: MARK: QUESTION 1
        
        //"What do you put before a variable name to make it a constant value?
        if questionNum == 0 {
            
            if userAnswer == "let" || userAnswer == "Let" {
                
                print("COrreECYTEW")
                
                isQuestionRight = true
                
                
            }//user answer
            
            else {
                
                isQuestionWrong = true
                
            }
            
        }//user question
        
        
        
        
        
        //: MARK: QUESTION 2
        
        //What is the keyword to start a function?
        if questionNum == 1 {
            
            if userAnswer == "func" || userAnswer == "Func" {
                
                print("COrreECYTEW")
                
                isQuestionRight = true
                
            }//user answer
            
            else {
                
                isQuestionWrong = true
                
            }
            
        }//user question
        
        
        
        
        
        
        //: MARK: QUESTION 3
        //What is the type that stores a variable of a number with a decimal?
        
        if questionNum == 2 {
            
            if userAnswer == "float" || userAnswer == "Float" {
                
                isQuestionRight = true
            }//user answer
            
            else {
                
                isQuestionWrong = true
                
            }
            
        }//user question
        
        
        
        
        
        //: MARK: QUESTION 4
        //What is the keyword needed to declare a changeable variable?
        
        if questionNum == 3 {
            
            if userAnswer == "var" || userAnswer == "Var" {
                
                isQuestionRight = true
            }//user answer
            
            else {
                
                isQuestionWrong = true
                
            }
            
        }//user question
        
        
        
        
        
        //: MARK: QUESTION 5
        //What is the keyword needed to declare a changeable variable?
        
        //CHANGE
        if questionNum == 4 {
            
            if userAnswer == "@AppStorage" || userAnswer == "@appstorage" {
                
                isQuestionRight = true
            }//user answer
            
            else {
                
                isQuestionWrong = true
                
            }
            
        }//user question
        
        
        
        
        //: MARK: QUESTION 6
        //What is the type that stores a variable of a whole number?
        
        //CHANGE
        if questionNum == 5 {
            
            if userAnswer == "Int" || userAnswer == "int" {
                
                isQuestionRight = true
            }//user answer
            
            else {
                
                isQuestionWrong = true
                
            }
            
        }//end of main if
        
        
        
        
        //: MARK: QUESTION 7
        //What is the type of variable that stores a true / false statement?
        
        //CHANGE
        if questionNum == 6 {
            
            if userAnswer == "Bool" || userAnswer == "bool" {
                
                isQuestionRight = true
            }//user answer
            
            else {
                
                isQuestionWrong = true
                
            }
            
        }//end of main if
        
        
        
        
    }//function
    
    
    
    
    
    //: MARK: RANDOMINT FUNC
    
    
    func randomInt(){

       questionNum = Int.random(in: 0...6)
        
    }//func random int
    
    
    //: MARK: CHANGE Q RANGE HERE
    
    
}

struct questionView_Previews: PreviewProvider {
    static var previews: some View {
        questionView()
            .preferredColorScheme(.dark)
    }
}
