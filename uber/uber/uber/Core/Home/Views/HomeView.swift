//
//  HomeView.swift
//  uber
//
//  Created by Aryan Singh on 9/12/23.
//

import SwiftUI

struct HomeView: View {
    @State private var showLocationSearchView = false
    var body: some View {
        //zstack helps us to put things on top of each other like in the z-axis you know
        ZStack(alignment: .top) {
            UberMapViewRepresentable()
                .ignoresSafeArea()//Makes the map stretch to full screen
            if showLocationSearchView{
                LocationSearchView()
            }else{
                LocationSearchActivationView().padding(.top, 72).onTapGesture{
                    withAnimation(.spring()){
                        showLocationSearchView.toggle()
                    }
                }
            }
            
            MapViewActionButton(showLocationSearchView: $showLocationSearchView).padding(.leading)
                .padding(.top, 4)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
