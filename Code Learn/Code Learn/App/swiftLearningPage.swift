//
//  swiftLearningPage.swift
//  Code Learn
//
//  Created by Harper Bledsoe on 5/27/22.
//

import SwiftUI

struct swiftLearningPage: View {
    
    @AppStorage("isSwiftLearning") var isSwiftLearning: Bool = false
    
    
    var body: some View {
        
        NavigationView{
            
            ScrollView{
                
                Image("swiftlogo")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(15)
                
                VStack(alignment: .leading, spacing: 10){
                    
                    HStack {
                        
                        Text("Swift")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                        
                        Button(action: {
                            
                            isSwiftLearning.toggle()
                            
                            
                        }, label: {
                            
                            if isSwiftLearning {
                                
                                Image(systemName: "heart.fill")
                                    .foregroundColor(.primary)
                                
                            }
                            else if !isSwiftLearning {
                                
                                Image(systemName: "heart")
                                    .foregroundColor(.primary)
                                
                            }
                            
                        })
                    }//hstack
                    .padding(.horizontal)
                    
                    
                    GroupBox(){
                        
                        Text("This coding language is created by Apple for a great beginner language or app development.")
                            .font(.body)
                            .lineSpacing(5)
                        
                    }//gbox
                    
                    
                }//vstack
                .padding(.horizontal, 10)
                
                
                
            }//scroll
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.top)
            .navigationTitle("Swift")
            
        }//navigation
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct swiftLearningPage_Previews: PreviewProvider {
    static var previews: some View {
        swiftLearningPage()
    }
}
