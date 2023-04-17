//
//  ViewA.swift
//  EOY App
//
//  Created by Varner, Sydney on 4/12/23.
//

import SwiftUI

struct ViewA: View {
    var body: some View {
        ZStack {
            Color.white
            
            Image(systemName: "house.fill")
                .foregroundColor(Color.gray)
                .font(.system(size: 100.0))
        }
    }
}

struct ViewA_Previews: PreviewProvider {
    static var previews: some View {
        ViewA()
    }
}
