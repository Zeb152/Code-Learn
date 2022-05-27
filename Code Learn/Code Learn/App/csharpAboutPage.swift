//
//  csharpAboutPage.swift
//  Code Learn
//
//  Created by Harper Bledsoe on 5/27/22.
//

import SwiftUI

struct csharpAboutPage: View {
    
    @AppStorage("isCSharpLearning") var isCSharpLearning: Bool = false
    
    var body: some View {
        
        NavigationView{
            
            ScrollView{
                
                Image("csharplogo")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(15)
                
                VStack(alignment: .leading, spacing: 10){
                    
                    HStack {
                        
                        Text("C-Sharp")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                        
                        Button(action: {
                            
                            isCSharpLearning.toggle()
                            
                        }, label: {
                            
                            if isCSharpLearning {
                                
                                Image(systemName: "heart.fill")
                                    .foregroundColor(.primary)
                                
                            }
                            else if !isCSharpLearning {
                                
                                Image(systemName: "heart")
                                    .foregroundColor(.primary)
                                
                            }
                            
                        })
                    }//hstack
                    .padding(.horizontal)
                    
                    
                    GroupBox(){
                        
                        Text("This language was developed by Microsoft and is mainly used for developing games.")
                            .font(.body)
                            .lineSpacing(5)
                        
                    }//gbox
                    
                    
                }//vstack
                .padding(.horizontal, 10)
                
                
                
            }//scroll
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.top)
            .navigationTitle("C-Sharp")
            
        }//navigation
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct csharpAboutPage_Previews: PreviewProvider {
    static var previews: some View {
        csharpAboutPage()
    }
}
