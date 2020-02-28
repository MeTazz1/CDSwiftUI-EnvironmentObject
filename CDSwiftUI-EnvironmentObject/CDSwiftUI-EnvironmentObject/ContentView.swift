//
//  ContentView.swift
//  CDSwiftUI-EnvironmentObject
//
//  Created by Chris on 2/28/20.
//  Copyright © 2020 Christophe Dellac. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // Getting the environment object that has been set in the SceneDelegate
    @EnvironmentObject var user: User
    
    var body: some View {
        NavigationView {
            VStack {
                
                // Using the age property of this environment object
                // Note that we are using it as a regular property
                Text("Welcome. The age is \(user.age)")
                    .font(.title)
                    .bold()
                
                Text("This is our main view. To change the age, please press the blue circle")
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .frame(height: 60)
                
                // Please note that we are not passing any type of data from this view
                // to the next subview
                NavigationLink(destination: FirstView()) {
                    Circle().fill(Color.blue)
                        .frame(width: 80, height: 80)
                }
            }
            .padding()
        .navigationBarTitle("Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(User(age: 15))
    }
}
