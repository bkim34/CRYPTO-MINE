//
//  countryData.swift
//  SyncrhonyAppp
//
//  Created by Ben Kim on 11/9/22.
//

//import SwiftUI
//
//
//struct Data: Codable, Identifiable{
//    let capital: String
//    let population: String
//    let region: String
//    let continent: String
//}
//
//class Api{
//    func getData(){
//        let url = URL(string: "https://restcountries.com/v3.1/name/" + country)
//        URLSession.shared.dataTask(with: url) { _,_,_ in (data);,<#arg#>,<#arg#>  in
//            let capital = JSONDecoder().decode([Capital].self, from: data)
//            print (capital)
//            let population = JSONDecoder().decode([Population].self, from: data)
//            print (population)
//            let region = JSONDecoder().decode([Region].self, from: data)
//            print (region)
//            let continent = JSONDecoder().decode([Continent].self, from: data)
//            print (continent)
//        }
//        .resume()
//    }
//}
