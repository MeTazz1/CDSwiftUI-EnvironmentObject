//
//  ThirdView.swift
//  CDSwiftUI-EnvironmentObject
//
//  Created by Chris on 2/28/20.
//  Copyright © 2020 Christophe Dellac. All rights reserved.
//

import SwiftUI

struct ThirdView: View {
    
    // Getting the shared user stored in the Environment
    // Please note that we are not passing this property in any way from the main view, to this view
    // It is all magic, from the Shared Environment Object, managed by SwiftUI
    @EnvironmentObject var user: User
    
    var body: some View {
        VStack {
            Text("This is our last subview, and the age is \(user.age). Please use the slider below to change the age")
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .frame(height: 60)
            
            // Using this stepper, let's change the value of our property inside our EnvironmentObject
            Stepper(onIncrement: {
                // We update the value as a regular value, we don't need to use any $ as it is not a binding
                self.user.age += 1
            }, onDecrement: {
                self.user.age -= 1
            }) {
                Text("Age: \(user.age)")
            }
            
            
            Text("Now, you can go back to the main view to make sure that the age has changed in the Environment Object, not only in this View 😎")
            .multilineTextAlignment(.center)
            .lineLimit(3)
            .frame(height: 80)
            .padding()
        }
        .navigationBarTitle("Third View", displayMode: .inline)
        .padding()
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
            .environmentObject(User(age: 70))
    }
}
