//
//  userData.swift
//  chinaLandmark
//
//  Created by tcyeee on 2021/8/18.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var userLandmarks = landmarks
}
