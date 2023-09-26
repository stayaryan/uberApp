//
//  LocationSearchActivationView.swift
//  uber
//
//  Created by Aryan Singh on 9/26/23.
//

import SwiftUI

struct LocationSearchActivationView: View {
    var body: some View {
        HStack{
            Rectangle()
                .fill(Color.black)
                .frame(width: 8, height: 8)
                .padding(.horizontal)
            
            Text("Where to?")
                .foregroundColor(Color(.darkGray))
            
            Spacer()
            
        }
        
        .frame(width: UIScreen.main.bounds.width - 64, height: 50)
        .background(
            Rectangle().fill(Color.white).shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 6)
        )
        
    }
}

#Preview {
    LocationSearchActivationView()
}
