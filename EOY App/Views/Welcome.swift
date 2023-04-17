//
//  Welcome.swift
//  EOY App
//
//  Created by Varner, Sydney on 4/14/23.
//

import SwiftUI

struct Welcome: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("PrimaryColor").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Image(uiImage: #imageLiteral(resourceName: "onboard"))
                    Spacer()
                    PrimaryButton(title: "Get Started")
                    
                    NavigationLink(
                        destination: Login().navigationBarHidden(true),
                        label: {
                            Text("Sign In")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color("PrimaryColor"))
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                                .cornerRadius(50.0)
                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                .padding(.vertical)
                        })
                        .navigationBarHidden(true)
                    
                    HStack {
                        Text("New around here? ")
                        Text("Sign in")
                            .foregroundColor(Color("PrimaryColor"))
                    }
                }
                .padding()
            }
        }
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
