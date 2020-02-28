//
//  SecondView.swift
//  CDSwiftUI-EnvironmentObject
//
//  Created by Chris on 2/28/20.
//  Copyright © 2020 Christophe Dellac. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack {
            
            // please note that we are not passing any type of data from this view
            // to the next subview
            Text("This is our second subview. To change the age, please press the orange circle")
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .frame(height: 60)
            
            // please note that we are not passing any type of data from this view
            // to the next subview
            NavigationLink(destination: ThirdView()) {
                Circle().fill(Color.orange)
                    .frame(width: 80, height: 80)
            }
        }
        .navigationBarTitle("Second View", displayMode: .inline)
        .padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
