//
//  ViewB.swift
//  EOY App
//
//  Created by Varner, Sydney on 4/14/23.
//

import SwiftUI

struct ViewB: View {
    var body: some View {
        ZStack {
            Color.white
            
            Image(systemName: "line.horizontal.3")
                .foregroundColor(Color.gray)
                .font(.system(size: 100.0))
        }
    }
}

struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        ViewB()
    }
}
