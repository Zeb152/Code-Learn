//
//  ContentView.swift
//  Code Learn
//
//  Created by Harper Bledsoe on 5/27/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            
            homeScreenView().tabItem({
                
                Image(systemName: "house")
                
            })
            
            learnView().tabItem({
                
                Image(systemName: "book.closed")
                
            })
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
