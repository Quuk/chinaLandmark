//
//  chinaLandmarkApp.swift
//  chinaLandmark
//
//  Created by tcyeee on 2021/8/13.
//

import SwiftUI

@main
struct chinaLandmarkApp: App {
    var userData = UserData()
    
    var body: some Scene {
        WindowGroup {
            LandmarkList()
                .environmentObject(userData)
        }
    }
}
