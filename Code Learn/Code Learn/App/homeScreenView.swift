//
//  homeScreenView.swift
//  Code Learn
//
//  Created by Harper Bledsoe on 5/27/22.
//

import SwiftUI

struct homeScreenView: View {
    var body: some View {
        
        NavigationView{
            
            ScrollView(showsIndicators: false){
                
                VStack{
                    
                    GroupBox{
                        
                        boxAboutTitleView(title: "Coding", icon: "keyboard.fill")
                        
                        
                        NavigationLink(destination: swiftLearningPage(), label: {
                            
                            boxTitleView(image: "swiftlogo", title: "Swift", description: "This coding language is created by Apple for a great beginner language or app development.")
                            
                        })
                        
                            
                        
                        NavigationLink(destination: csharpAboutPage(), label: {
                            
                            boxTitleView(image: "csharplogo", title: "C-Sharp", description: "This language was developed by Microsoft and is mainly used for developing games.")
                            
                        })
                        
                        
                    }//gbox
                    
                    
                    GroupBox(){
                        
                        boxAboutTitleView(title: "Info", icon: "info.circle.fill")
                        
                        GroupBox{
                            
                            infoInBox(header: "Name", content: "Codelearn")
                            
                            
                            Divider()
                                .padding(.vertical, 1)
                            
                            infoInBox(header: "Version", content: "1.0")
                            
                            
                            Divider()
                                .padding(.vertical, 1)
                            
                            infoInBox(header: "Developer", content: "ZLabZ")
                            
                            
                            Divider()
                                .padding(.vertical, 1)
                            
                            infoInBox(header: "Owner", content: "Harper Bledsoe")
                            
                        }
                        
                    }//gbox
                    
                    
                }//vstack
                .padding(.horizontal)
                .frame(minWidth: 395, maxWidth: 700)
                
            }//scroll
            .navigationTitle("Home")
            
        }//navigatiom
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct homeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        homeScreenView()
            .previewInterfaceOrientation(.portrait)
            
    }
}
