//
//  RentCarApp.swift
//  RentCar
//
//  Created by tandyys on 17/07/24.
//

import SwiftUI

@main
struct RentCarApp: App {
    init() {
        UITableView.appearance().sectionHeaderHeight = 0
        UITableView.appearance().sectionFooterHeight = 10
    }
    
    var body: some Scene {
        WindowGroup {
            FormView()
        }
    }
}
