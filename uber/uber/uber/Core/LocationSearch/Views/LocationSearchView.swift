//
//  LocationSearchView.swift
//  uber
//
//  Created by Aryan Singh on 9/26/23.
//

import SwiftUI

struct LocationSearchView: View {
    @State private var startLocationText = ""
    @State private var destinationLocationText = ""
    
    var body: some View {
        VStack{
            //header view
            HStack{
                VStack{
                    Circle().fill(Color(.systemGray3))
                        .frame(width: 6, height: 6)
                    
                    Rectangle().fill(Color(.systemGray3))
                        .frame(width: 1, height: 24)
                    
                    Rectangle().fill(.black)
                        .frame(width: 6, height: 6)
                }
                
                VStack{
                    TextField("Current location", text:
                                $startLocationText).frame(height: 32).background(Color(.systemGroupedBackground))
                        .padding(.trailing)
                    
                    
                    TextField("Where to?", text:
                                $destinationLocationText).frame(height: 32).background(Color(.systemGray4))
                        .padding(.trailing)
                }
            }
            .padding(.horizontal)
            .padding(.top, 64)
            
            Divider().padding(.vertical)
            //list view
            
            ScrollView{
                VStack(alignment: .leading){
                    ForEach(0..<20, id: \.self){
                        _ in
                        LocationSearchResultCell()
                    }
                }
            }
        }.background(.white)
    }
}

#Preview {
    LocationSearchView()
}
