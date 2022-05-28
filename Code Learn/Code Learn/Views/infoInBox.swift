//
//  infoInBox.swift
//  Code Learn
//
//  Created by Harper Bledsoe on 5/28/22.
//

import SwiftUI

struct infoInBox: View {
    
    var header: String
    
    var content: String
    
    var body: some View {
        
        VStack{
            
            
            
            HStack{
                
                Text(header)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text(content)
                    
                
            }//hstack
            
        }//vstack
    }
}

struct infoInBox_Previews: PreviewProvider {
    static var previews: some View {
        infoInBox(header: "Developer", content: "zlabz")
            .previewLayout(.fixed(width: 360, height: 60))
            .padding()
    }
}
