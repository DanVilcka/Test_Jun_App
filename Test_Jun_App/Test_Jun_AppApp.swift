//
//  Test_Jun_AppApp.swift
//  Test_Jun_App
//
//  Created by Daniil Vilchinskiy on 19.01.2024.
//

import SwiftUI

@main
struct Test_Jun_AppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(hotels: Hotel(id: 1, name: "", adress: "", minimal_price: 1, rating: 1, rating_name: "", image_urls: [""], about_the_hotel: Description(description: "", peculiarities: [""])))
        }
    }
}
