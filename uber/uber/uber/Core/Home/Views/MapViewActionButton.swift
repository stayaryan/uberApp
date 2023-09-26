//
//  MapViewActionButton.swift
//  uber
//
//  Created by Aryan Singh on 9/26/23.
//

import SwiftUI

struct MapViewActionButton: View {
    @Binding var showLocationSearchView:  Bool
    var body: some View {
        Button{
            withAnimation(.spring()){
                showLocationSearchView.toggle()
            }
        }label: {
            Image(systemName: showLocationSearchView ? "arrow.left" : "line.3.horizontal")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6)
        }
        
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}

#Preview {
    MapViewActionButton(showLocationSearchView: .constant(true))
}
