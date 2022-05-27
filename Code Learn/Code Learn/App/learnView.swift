//
//  learnView.swift
//  Code Learn
//
//  Created by Harper Bledsoe on 5/27/22.
//

import SwiftUI

struct learnView: View {
    
    @AppStorage("isSwiftLearning") var isSwiftLearning: Bool?
    
    @AppStorage("isCSharpLearning") var isCSharpLearning: Bool?
    
    var body: some View {
        
        NavigationView{
            
            ScrollView(showsIndicators: false){
                
                if isSwiftLearning == false && isCSharpLearning == false{
                    
                    Text("No favorited courses yet!")
                        .padding(.vertical, 40)
                    
                }
                
                
                
                // MARK: SWIFT
                
                
                if isSwiftLearning == true {
                    
                    NavigationLink(destination: swiftQuestionsView(), label: {
                        
                        learnLanguageBoxView(image: "swiftlogo", title: "Swift")
                        
                    })
                    
                }
                
                
                // MARK: END OF SWIFT
                
                
                
                
                
                
                
                
                // MARK: C-SHARP
                
                if isCSharpLearning == true {
                    
                    NavigationLink(destination: swiftQuestionsView(), label: {
                        
                        learnLanguageBoxView(image: "csharplogo", title: "C-Sharp")
                        
                    })
                    
                }
                
                // MARK: END OF C-SHARP
                
                
                
            }//scrollview
            .padding(.horizontal, 15)
            .navigationTitle("My Learning")
            
        }//navigation
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
    
    
}

struct learnView_Previews: PreviewProvider {
    static var previews: some View {
        learnView()
    }
}
