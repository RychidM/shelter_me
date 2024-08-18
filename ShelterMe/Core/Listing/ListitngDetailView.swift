//
//  ListitngDetailView.swift
//  ShelterMe
//
//  Created by Rychid on 8/18/24.
//

import SwiftUI

struct ListitngDetailView: View {
    var body: some View {
        ScrollView(content: {
            ListingImageCarouselView(cornerRadius: 0.0)
            VStack(alignment: .leading, spacing: 5, content: {
                Text("Labone Villa").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(.semibold)
                HStack(spacing: 8, content: {
                    RatingView(rating: "3.3")
                    Text(" - ")
                    Text("23 Ratings").underline()
                })
                
               Text("Labone Accra")
            })
            .font(.caption).fontWeight(.semibold)
                .padding(.leading, 20)
                .frame(maxWidth: .infinity, alignment: .leading)
            Divider()
            HStack(content: {
                VStack(content: {
                    Text("Entire Villa hosted by Michael Myers").frame(width: 250)
                    
                })
                Spacer()
                Image("listing-2").frame(width: 50, height: 50).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
            })
        })
    }
}

#Preview {
    ListitngDetailView()
}
