//
//  Combine_numbers.swift
//  Test_Jun_App
//
//  Created by Daniil Vilchinskiy on 20.01.2024.
//

import Foundation

extension ContentView {
    func loadData_hotel() {
        
        guard let url = URL(string: "https://run.mocky.io/v3/75000507-da9a-43f8-a618-df698ea7176d") else {
            return
        }
        
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            if let data = data {
                print(String(data: data, encoding: .utf8)!)
                print("Loading")
                if let response_obj = try? JSONDecoder().decode(Hotel.self, from: data) {
                    DispatchQueue.main.async {
                        hotels.self = response_obj
                    }
                } else {
                    print("Wrong Data")
                }
            }
            
        }.resume()
    }
}

