//
//  ListitngDetailView.swift
//  ShelterMe
//
//  Created by Rychid on 8/18/24.
//

import SwiftUI

struct ListitngDetailView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView(content: {
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView(cornerRadius: 0.0)
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background(content: {
                        Circle()
                            .fill(.white)
                            .frame(width: 32, height: 32)
                        }).padding(30)
                })
            }
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
            VStack {
                HStack( content: {
                    VStack(alignment: .leading, content: {
                        Text("Entire Villa hosted by Michael Myers")
                            .frame(width: 240, alignment: .leading)
                        HStack(content: {
                            Text("4 Guests  -")
                            Text(" 4 Bedrooms  -")
                            Text("4 Beds  -")
                            Text("3 Baths")
                        }).font(.caption)
                    })
                    Spacer()
                    Image("listing-2").resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }).padding(20)
            }
            Divider()
            VStack(alignment: .leading, spacing: 10) {
                HStack (content: {
                    Image(systemName: "bag.circle")
                    VStack(alignment: .leading) {
                        Text("Self Check in")
                        Text("Check yourself in with the smart keypad").foregroundStyle(.gray)
                    }.font(.caption)
                }).frame(width: .infinity)
                HStack {
                    Image(systemName: "medal")
                    VStack(alignment: .leading) {
                        Text("Superhost")
                        Text("Superhosts are experience, highly rated hosts who are committed to providing great stars for guests").foregroundStyle(.gray)
                    }.font(.caption)
                    Spacer()
                }
            }.padding(20)
            Divider()
            VStack(alignment: .leading, spacing: 10, content: {
                Text("Where you'll sleep").font(.headline).fontWeight(.semibold)
                ScrollView(.horizontal, content: {
                    HStack {
                        ForEach(1..<5) {
                            bedding in
                            VStack(alignment: .leading, spacing: 6, content: {
                                Image(systemName: "bed.double")
                                Text("Beadroom \(bedding)")
                            }).frame(width: 130, height: 100)
                                .overlay(content: {
                                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                        .stroke(lineWidth: 1)
                                        .foregroundStyle(.gray)
                                })
                        }
                    }
                })
                    .scrollIndicators(.hidden)
            }).padding(20)
        }).ignoresSafeArea()
            .scrollIndicators(.hidden)
            .padding(.bottom, 64)
            .overlay(alignment: .bottom, content: {
            VStack(content: {
                Divider().padding(.bottom, 20)
                HStack(content: {
                    VStack(content: {
                        Text("$232.89 per night").font(.subheadline).fontWeight(.semibold)
                    })
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Reserve")
                             .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    })
                }).padding(.horizontal, 20)
                
            })
            .background(.white)
        })
    }
}

#Preview {
    ListitngDetailView()
}
