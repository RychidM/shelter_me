//
//  ExploreView.swift
//  ShelterMe
//
//  Created by Rychid on 8/17/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            VStack{
                SearchAndFilterBar()
                Spacer()
                ScrollView {
                    LazyVStack(spacing: 32) {
                        ForEach(0...8, id: \.self) {
                            listing in 
                            NavigationLink(value: listing){
                                ListingItemView()
                                    .frame(height: 400)
                                    .clipShape(
                                        RoundedRectangle(cornerRadius: 10)
                                    )
                            }
                        }
                    }
                }.navigationDestination(for: Int.self, destination: { 
                    listing in ListitngDetailView()
                }).scrollIndicators(.hidden)
            }.padding(.horizontal, 20)
        }
    }
}

#Preview { 
    ExploreView()
}
