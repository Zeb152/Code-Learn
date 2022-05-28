//
//  swiftQuestionsView.swift
//  Code Learn
//
//  Created by Harper Bledsoe on 5/27/22.
//

import SwiftUI

struct swiftQuestionsView: View {
    
    var body: some View {
        
        GroupBox(){
            
            Text("In construction")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 5)
            
            Text("Sorry, please come back later!")
                .font(.footnote)
            
        }
        
    }
}

struct swiftQuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        swiftQuestionsView()
    }
}
