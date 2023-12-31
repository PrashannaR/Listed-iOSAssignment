//
//  Listed_iOSAssignmentApp.swift
//  Listed-iOSAssignment
//
//  Created by Prashanna Rajbhandari on 07/07/2023.
//

import SwiftUI

@main
struct Listed_iOSAssignmentApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            Home()
                .environmentObject(vm)
        }
    }
}
