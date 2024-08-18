//
//  ListingItemView.swift
//  ShelterMe
//
//  Created by Rychid on 8/17/24.
//

import SwiftUI

struct ListingItemView: View {
    var body: some View {
        VStack(spacing: 10, content: {
            ListingImageCarouselView()
            HStack(alignment: .top, content: {
                VStack(alignment: .leading, content: {
                    Text("Labone, Accra")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12km away").foregroundStyle(.gray )
                    Text("Aug 19 - 24").foregroundStyle(.gray)
                    HStack (spacing: 4){
                        Text("Ghc 3599.98").fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                        Text("per night")
                    }.foregroundStyle(.black)
                })
                Spacer()
                
                RatingView(rating: "3.5")
                
            }).font(.footnote)
        })
    }
}

#Preview {
    ListingItemView()
}
