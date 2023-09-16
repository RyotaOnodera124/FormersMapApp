//
//  FormersMapAppApp.swift
//  FormersMapApp
//
//  Created by 小野寺良太 on 2023/09/13.
//

import SwiftUI

@main
struct FormersMapAppApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}


