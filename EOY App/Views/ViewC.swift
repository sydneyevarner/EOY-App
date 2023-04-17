//
//  ViewC.swift
//  EOY App
//
//  Created by Varner, Sydney on 4/14/23.
//

import SwiftUI

struct ViewC: View {
    var body: some View {
        ZStack {
            Color.white
            
            Image(systemName: "gearshape.fill")
                .foregroundColor(Color.gray)
                .font(.system(size: 100.0))
        }
    }
}

struct ViewC_Previews: PreviewProvider {
    static var previews: some View {
        ViewC()
    }
}
