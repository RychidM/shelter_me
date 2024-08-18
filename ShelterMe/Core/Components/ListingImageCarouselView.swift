//
//  ListingImageCarouselView.swift
//  ShelterMe
//
//  Created by Rychid on 8/18/24.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var carouselHeight: Double = 320
    var cornerRadius: Double = 15
    var body: some View {
        TabView{
            ForEach(ListingData.homeListing, id: \.self) {
                image in Image(image).resizable().scaledToFill()
            }
        }.frame(height: carouselHeight)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
