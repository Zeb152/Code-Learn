//
//  swiftQuestionsView.swift
//  Code Learn
//
//  Created by Harper Bledsoe on 5/27/22.
//

import SwiftUI

struct swiftQuestionsView: View {
    
    var body: some View {
        
        TabView{
            
            questionView()
            questionView()
            questionView()
            
        }
        .tabViewStyle(.page)
        
    }
}

struct swiftQuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        swiftQuestionsView()
    }
}
