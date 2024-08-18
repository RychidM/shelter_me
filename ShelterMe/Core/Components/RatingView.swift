//
//  ratingView.swift
//  ShelterMe
//
//  Created by Rychid on 8/18/24.
//

import SwiftUI

struct RatingView: View {
    var rating:String = "5.0"
    var body: some View {
        HStack(spacing: 2){
            Image(systemName: "star.fill")
            Text(rating)
        }.foregroundStyle(.black)
    }
}

#Preview {
    RatingView()
}
