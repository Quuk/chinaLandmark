//
//  LandmarkList.swift
//  chinaLandmark
//
//  Created by tcyeee on 2021/8/15.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List( landmarks ){ item in
                // 为了让它可点击, 所以加上NavigationLink
                NavigationLink(destination: LandmarkDetail(detail: item)){
                    LandmarkCell(landmark: item)
                }
            }
            .navigationBarTitle(Text("中国地标"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 12 mini"],id: \.self){ deviceName in
                    LandmarkList()
                        .previewDevice(PreviewDevice(rawValue: deviceName))
                        .previewDisplayName(deviceName)
        }
    }
}
