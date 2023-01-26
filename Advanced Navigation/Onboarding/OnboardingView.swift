//
//  OnboardingView.swift
//  Advanced Navigation
//
//  Created by Angelica dos Santos on 25/01/23.
//

import SwiftUI

struct OnboardingView: View {
    
    var doneRequested: () -> ()
    
    var body: some View {
        TabView {
            ScaledImageView(name: "bg_giant_skeleton")
                .tag(0)
            ScaledImageView(name: "bg_magic_archer")
                .tag(1)
            ScaledImageView(name: "bg_rascals")
                .tag(2)
            
            Button("Done") {
                doneRequested()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .background(Color.black.ignoresSafeArea(.all))
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(doneRequested: { })
    }
}
