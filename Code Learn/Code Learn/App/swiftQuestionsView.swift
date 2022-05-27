//
//  swiftQuestionsView.swift
//  Code Learn
//
//  Created by Harper Bledsoe on 5/27/22.
//

import SwiftUI

struct swiftQuestionsView: View {
    
   var userAnswer = ""
    
    var body: some View {
        
        NavigationView{
            
            VStack(spacing: 30){
                
                GroupBox {
                    
                    Text("Swift")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                
                }//gbox
                
                
                Text("Question here")
                
                
                GroupBox(){
                    
                    //TextField("type answer", text: $userAnswer)
                    
                }
                
                
            }//vstack
            .navigationBarHidden(true)
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct swiftQuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        swiftQuestionsView()
    }
}
