//
//  home.swift
//  chinaLandmark
//
//  Created by tcyeee on 2021/8/23.
//

import SwiftUI

struct home: View {
    // 使用聚合方法
    var categories:[String:[Landmark]]{
        Dictionary(
            grouping: landmarks,
            by: { $0.category }
        )
    }
    
    var body: some View {
        NavigationView {
            List{
                Home_title_img()
                
                
            }.navigationBarTitle(Text("精选"))
        }
    }
}


// 首页头图
private struct Home_title_img: View{
    var body: some View{
        Image("home_title_img")
            .resizable()
            .scaledToFill()
            .frame(height: 170)
            .clipped()
            .listRowInsets(EdgeInsets())
        }
}


struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}

