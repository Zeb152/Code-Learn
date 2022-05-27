//
//  boxTitleView.swift
//  Code Learn
//
//  Created by Harper Bledsoe on 5/27/22.
//

import SwiftUI

struct boxTitleView: View {
    
    var image: String
    
    var title: String
    
    var description: String
    
    var body: some View {
        
        
        GroupBox(){
            
            HStack{
                
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .cornerRadius(15)
                
                VStack(alignment: .leading){
                    
                    Text(title)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.primary)
                    
                    Text(description)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                    
                }//vstack
                
                Image(systemName: "arrow.right")
                
                
            }//hstack
            
        }//groupbox
        .padding(.vertical, 5)

        
    }
}

struct boxTitleView_Previews: PreviewProvider {
    static var previews: some View {
        boxTitleView(image: "swiftlogo", title: "Swift", description: "This coding language is created by Apple for a great beginner language or app development.")
            .previewLayout(.fixed(width: 375, height: 130))
            .padding()
    }
}
