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
    
    var swiftQuestions: Array = ["What do you put before a variable name to make it a constant value?", "What is the keyword to start a function?", "q3"]
    
    
   @State var questionNum: Int?
    
    
    
    
    @State var isQuestionRight: Bool = false
    
    
    //body

    var body: some View {
        
        NavigationView{
            
            
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
                
                //questionNum =  Int.random(in: 0...2)
                
                Text(swiftQuestions[questionNum!])
                    .font(.headline)
                
                
                Spacer()
                
                
                Button(action: {
                    
                    
                    
                    
                    
                }, label: {
                    
                    
                    Text("Next")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.horizontal, 7)
                        .foregroundColor(.primary)
                        .padding(8)
                        .background(Color.secondary)
                        .cornerRadius(10)
                    
                    
                    
                })
                
                
                
                GroupBox(){
                    
                    HStack{
                        
                        if isQuestionRight == false {
                            
                            Image(systemName: "xmark")
                                .padding(.trailing, 10)
                            
                        }
                        
                        else if isQuestionRight == true {
                            
                            Image(systemName: "checkmark")
                                .padding(.trailing, 10)
                            
                            
                        }
                        
                        
                        TextField("type answer", text: $userAnswer)
                            .onSubmit {

                                checkIfCorrect()
                                
                                if isQuestionRight == true {
                                    
                                    presentationMode.wrappedValue.dismiss()
                                    
                                }

                            }//textfeild
                        
                        
                        
                    }//hstack
                    
                }//gbox
                .padding(.bottom, 35)
                
                
                
                
                
            }//vstack
            .padding(.horizontal, 25)
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                
                Image(systemName: "xmark")
                    .foregroundColor(.primary)
                
            }))

        
        }//navigation

        
        
    }//body
    
    func checkIfCorrect(){
        
        if questionNum == 0 {
            
            if userAnswer == "let" || userAnswer == "Let" {
                
                print("COrreECYTEW")
                
                isQuestionRight = true
                
                
            }//user answer
            
            else {
                
                print("NO DAB")
                
            }
            
        }//user question
        
        
        
        if questionNum == 1 {
            
            if userAnswer == "yes" || userAnswer == "Yes" {
                
                print("COrreECYTEW")
                
                isQuestionRight = true
                
            }//user answer
            
            else {
                
                print("NO BAD")
                
            }
            
        }//user question
        
        if questionNum == 2 {
            
            if userAnswer == "no" || userAnswer == "No" {
                
                print("COrreECYTEW")
                isQuestionRight = true
            }//user answer
            
            else {
                
                print("NO BAD")
                
            }
            
        }//user question
        
        
        
    }//function
    
    
    func randomInt(){
        
        questionNum = Int.random(in: 0...2)
        
    }//func random int
}

struct questionView_Previews: PreviewProvider {
    static var previews: some View {
        questionView()
            .preferredColorScheme(.dark)
    }
}
