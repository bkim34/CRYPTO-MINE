//
//  ContentView.swift
//  Shared
//
//  Created by Ben Kim on 11/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            Section{
                //intro and experience
                Text("Benjamin Kim")
                    .font(.system(size: 33))
                    .font(.headline)
                
                Image("img")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 200, height: 200)
                    .padding(6.0)
                Spacer()
                Text("University of Illinois Urbana-Champaign")
                    .padding(.top, 10)
                Text("Electrical and Computer Engineering")
                Text("Class of 2025")
                Text("Experience")
                    .font(.system(size: 25))
                    .font(.headline)
                    .font(.largeTitle)
                    .multilineTextAlignment(.leading)
                    .padding(4.0)
                Text("Software Engineering Intern at Synchrony (August 2022 - Present)")
                    .multilineTextAlignment(.leading)
                    .padding(2.0)
                    .font(.system(size: 15))
                Text("Student Researcher at MIT Research Laboratory of Electronics (June 2022- Present)")
                    .multilineTextAlignment(.leading)
                    .padding(2.0)
                    .font(.system(size: 15))
                Text("Software Engineering Intern at Boston Children's Hospital Innovation and Digital Health Accelerator (June 2022- August 2022)")
                    .multilineTextAlignment(.leading)
                    .padding(2.0)
                    .font(.system(size: 15))
                
                }
                Section{
                    Button("Select a Country:"){CountryView()}
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
