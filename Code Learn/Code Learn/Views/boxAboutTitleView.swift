//
//  boxAboutTitleView.swift
//  Code Learn
//
//  Created by Harper Bledsoe on 5/27/22.
//

import SwiftUI

struct boxAboutTitleView: View {
    
    var title: String
    
    var icon: String
    
    var body: some View {
        
        GroupBox(){
            
            HStack{
                
                Text(title)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Image(systemName: icon)
                
            }
            
        }
        
    }
}

struct boxAboutTitleView_Previews: PreviewProvider {
    static var previews: some View {
        boxAboutTitleView(title: "Languages", icon: "keyboard.fill")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
