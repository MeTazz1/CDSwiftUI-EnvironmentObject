//
//  User.swift
//  CDSwiftUI-EnvironmentObject
//
//  Created by Chris on 2/28/20.
//  Copyright © 2020 Christophe Dellac. All rights reserved.
//

import SwiftUI

final class User: ObservableObject {
     @Published var age: Int
    
    init(age: Int) {
        self.age = age
    }
}
