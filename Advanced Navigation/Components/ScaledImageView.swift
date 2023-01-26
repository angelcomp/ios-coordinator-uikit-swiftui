//
//  ScaledImageView.swift
//  Advanced Navigation
//
//  Created by Angelica dos Santos on 25/01/23.
//

import SwiftUI

struct ScaledImageView: View {
    let name: String
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFit()
    }
}


struct ScaledImageView_Previews: PreviewProvider {
    static var previews: some View {
        ScaledImageView(name: "bg_rascals")
    }
}
