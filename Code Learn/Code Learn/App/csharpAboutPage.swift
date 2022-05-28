//
//  csharpAboutPage.swift
//  Code Learn
//
//  Created by Harper Bledsoe on 5/27/22.
//

import SwiftUI

struct csharpAboutPage: View {
    
    @AppStorage("isCSharpLearning") var isCSharpLearning: Bool = false
    
    @State private var isAnimating: Bool = false
    
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
                            .offset(x: isAnimating ? 0 : -15)
                        
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
                        .offset(x: isAnimating ? 0 : 15)
                        
                    }//hstack
                    .padding(.horizontal)
                    
                    
                    GroupBox(){
                        
                        Text("This language was developed by Microsoft and is mainly used for developing games.")
                            .font(.body)
                            .lineSpacing(5)
                        
                    }//gbox
                    .offset(y: isAnimating ? 0 : -15)
                    
                    
                }//vstack
                .padding(.horizontal, 10)
                
                
                
            }//scroll
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.top)
            .navigationTitle("C-Sharp")
            .onAppear{
                
                withAnimation(.easeOut(duration: 0.5)){
                    
                    isAnimating = true
                    
                }
                
            }
            
            
        }//navigation
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct csharpAboutPage_Previews: PreviewProvider {
    static var previews: some View {
        csharpAboutPage()
    }
}
