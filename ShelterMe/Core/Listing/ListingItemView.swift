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
            TabView{
                ForEach(ListingData.homeListing, id: \.self) {
                    image in Image(image).resizable().scaledToFit()
                }
            }.frame(height: 320).clipShape(RoundedRectangle(cornerRadius: 10)).tabViewStyle(.page)
            HStack(alignment: .top, content: {
                VStack(alignment: .leading, content: {
                    Text("Labone, Accra").fontWeight(.semibold)
                    Text("12km away").foregroundStyle(.gray )
                    Text("Aug 19 - 24").foregroundStyle(.gray)
                    HStack (spacing: 4){
                        Text("Ghc 3599.98").fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                        Text("per night")
                    }
                })
                Spacer()
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    Text("3.6")
                }
                
            }).font(.footnote)
        })
    }
}

#Preview {
    ListingItemView()
}
