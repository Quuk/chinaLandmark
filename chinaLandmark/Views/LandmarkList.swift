//
//  LandmarkList.swift
//  chinaLandmark
//
//  Created by tcyeee on 2021/8/15.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly , label: {
                    Text("只展示收藏")
                })
                
                ForEach( landmarks ){ item in
                    if(!showFavoritesOnly || item.isFavorite ){
                        NavigationLink(destination: LandmarkDetail(detail: item)){
                            LandmarkCell(landmark: item)
                        }
                    }
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
