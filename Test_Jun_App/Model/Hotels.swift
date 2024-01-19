//
//  Hotels.swift
//  Test_Jun_App
//
//  Created by Daniil Vilchinskiy on 20.01.2024.
//

import SwiftUI

struct Hotel: Identifiable, Codable {
    var id: Int = 0
    var name: String = ""
    var adress: String = ""
    var minimal_price: Int = 0
    var rating: Int = 0
    var rating_name: String = ""
    var image_urls: [String] = [""]
    var about_the_hotel: Description
}

struct Description: Codable {
    var description: String = ""
    var peculiarities: [String] = [""]
}

struct HotelDetail: View {
    var hotel: Hotel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(hotel.name)
                .font(.headline)
            Text(hotel.adress)
                .font(.footnote)
        }
    }
}
