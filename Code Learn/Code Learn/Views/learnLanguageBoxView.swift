//
//  learnLanguageBoxView.swift
//  Code Learn
//
//  Created by Harper Bledsoe on 5/27/22.
//

import SwiftUI

struct learnLanguageBoxView: View {
    
    var image: String
    
    var title: String
    
    var body: some View {
        
        GroupBox(){
            
            HStack{
                
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .cornerRadius(15)
                
                Spacer()
                
                Text(title)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Image(systemName: "arrow.right")
                
                
            }//hstack
            
        }//groupbox
        .padding(.vertical, 5)
        
    }
}

struct learnLanguageBoxView_Previews: PreviewProvider {
    static var previews: some View {
        learnLanguageBoxView(image: "swiftlogo", title: "Swift")
            .previewLayout(.fixed(width: 375, height: 130))
            .padding()
    }
}
