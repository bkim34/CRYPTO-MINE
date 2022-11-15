//
//  CountryView.swift
//  SyncrhonyAppp
//
//  Created by Ben Kim on 11/9/22.
//

import Foundation
import SwiftUI

struct CountryView: View {
    var countries: [String] = ["United States", "Brazil", "Spain"]
    var body: some View {
        //Naviga {
            VStack{
                ForEach(countries, id: \.self){ country in
                    NavigationLink(destination: CountryDetailView(country: country)){
                        Text(country)
                    }
                }
            }
        
    }

}

struct CountryDetailView: View {
    @State private var info: String = ""
    @State var country: String
    var body: some View {
        var country: String = "brazil" //temp for while we cant pass the country
        var site: String = "https://restcountries.com/v3.1/name/" + country
        let (data, _) = try await URLSession.shared.data(from: URL(string:site)!)
        let decodedResponse = try? JSONDecoder().decode(Country.self, from: data)
        info = decodedResponse?.value ?? ""
        Text(info)
    }
}
struct Country: Codable {
    let value: String
}
struct CountrySelect: Codable {
    let passed: String
}
//func printCountries(Array: countries){
//    for i in countries{
//        Button(countries[i], action: countrySelected(countries[i]))
//    }
//}

//func countrySelected(country: String){
////    Api().getData(country)
//}

//struct CountryView_Previews: PreviewProvider {
//    static var previews: some View {
//        CountryView()
//    }
//}
