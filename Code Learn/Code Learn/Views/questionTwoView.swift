//
//  questionTwoView.swift
//  Code Learn
//
//  Created by Harper Bledsoe on 5/27/22.
//

import SwiftUI

struct questionTwoView: View {
    
    
    @State var userAnswerTwo: String = ""
    
    var swiftQuestions: Array = ["What do you put before a variable name to make it a constant value?", "q2", "q3"]
    
    var questionNum = Int.random(in: 0...2)
    
    
    
    @State var isQuestionRight: Bool = false
    
    
    
    
    
    var body: some View {
        
        
        
        VStack(spacing: 30){
            
            HStack{
                
                GroupBox {
                    
                    HStack {
                        
                        Text("Swift")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 254/255, green: 110/255, blue: 48/255))
                        
                        Image(systemName: "swift")
                            .foregroundColor(Color(red: 254/255, green: 110/255, blue: 48/255))
                        
                    }
                
                }//gbox
                
                
                
                
            }//hstack
            
            
            
            Text(swiftQuestions[questionNum])
                .font(.headline)
            
            
            Spacer()
            
            
            
            
            GroupBox(){
                
                HStack{
                    
                    TextField("type answer", text: $userAnswerTwo)
                        .onSubmit {
                            
                            checkIfCorrect()

                        }
                    
                    if isQuestionRight == false {
                        
                        EmptyView()
                        
                    }
                    
                    else if isQuestionRight == true {
                        
                        Image(systemName: "checkmark")
                        
                    }
                    
                }
                
            }
            .padding(.bottom, 35)
            
            
            
        }//vstack
        .navigationBarHidden(true)
        .padding(.horizontal, 25)

    }
    
    
    func checkIfCorrect(){
        
        if questionNum == 0 {
            
            if userAnswerTwo == "let" || userAnswerTwo == "Let" {
                
                print("COrreECYTEW")
                
                isQuestionRight = true
                
            }//user answer
            
            else {
                
                print("NO DAB")
                
            }
            
        }//user question
        
        
        
        if questionNum == 1 {
            
            if userAnswerTwo == "yes" || userAnswerTwo == "Yes" {
                
                print("COrreECYTEW")
                
                isQuestionRight = true
                
            }//user answer
            
            else {
                
                print("NO BAD")
                
            }
            
        }//user question
        
        if questionNum == 2 {
            
            if userAnswerTwo == "no" || userAnswerTwo == "No" {
                
                print("COrreECYTEW")
                isQuestionRight = true
            }//user answer
            
            else {
                
                print("NO BAD")
                
            }
            
        }//user question
        
        
        
    }
}
        
        


struct questionTwoView_Previews: PreviewProvider {
    static var previews: some View {
        questionTwoView()
    }
}
