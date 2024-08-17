//
//  SearchAndFilterBar.swift
//  ShelterMe
//
//  Created by Rychid on 8/17/24.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            VStack (alignment: .leading, spacing: 2) {
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Any week - Any guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
        }.padding(.vertical, 10 )
            .padding(.horizontal)
            .overlay {
                Capsule().stroke(lineWidth: 0.5)
                    .foregroundStyle(Color(.systemGray3 ))
            }
    }
}

#Preview {
    SearchAndFilterBar()
}
