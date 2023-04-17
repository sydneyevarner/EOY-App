
//
//  ContentView.swift
//  EOY App
//
//  Created by Varner, Sydney on 4/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Welcome()
    }
}
struct PrimaryButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color("PrimaryColor"))
            .cornerRadius(50)
    }
}
        
/*            TabView {
                ViewA()
                    .badge(10)
                    .tabItem() {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                ViewB()
                    .badge(10)
                    .tabItem() {
                        Image(systemName: "line.horizontal.3")
                        Text("Menu")
                    }
                ViewC()
                    .badge(10)
                    .tabItem() {
                        Image(systemName: "gearshape.fill")
                        Text("Settings")
                    }
            }*/

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
