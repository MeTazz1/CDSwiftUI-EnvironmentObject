//
//  FirstView.swift
//  CDSwiftUI-EnvironmentObject
//
//  Created by Chris on 2/28/20.
//  Copyright © 2020 Christophe Dellac. All rights reserved.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        VStack {
            
            // please note that we are not passing any type of data from this view
            // to the next subview
            Text("This is our first subview. To change the age, please press the red circle")
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .frame(height: 60)
            
            NavigationLink(destination: SecondView()) {
                Circle().fill(Color.red)
                    .frame(width: 80, height: 80)
            }
        }
        .navigationBarTitle("First View", displayMode: .inline)
        .padding()
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
