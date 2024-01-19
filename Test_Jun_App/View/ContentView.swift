//
//  ContentView.swift
//  Test_Jun_App
//
//  Created by Daniil Vilchinskiy on 19.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State var hotels: Hotel
    
    var body: some View {
        NavigationStack {
            Text(hotels.image_urls[0])
            
            VStack {
                Text(hotels.name)
                Text(String(hotels.rating))
                Text(hotels.adress)
                Text(String(hotels.minimal_price))
            }
            
            VStack {
                Text(hotels.rating_name)
                Text(hotels.about_the_hotel.description)
            }
            
            NavigationLink(destination: HotelDetail(hotel: hotels)) {
                Text("К выбору номера")
            }
            
        }.onAppear(perform: loadData_hotel)
    }
}

#Preview {
    ContentView(hotels: Hotel(about_the_hotel: Description()))
}
