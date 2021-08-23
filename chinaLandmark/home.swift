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
                // 首页头图
                Home_title_img()
                
                // 建筑分类列表
                ForEach(categories.keys.sorted(), id: \.self){ item in
                    Landmark_pack(key: item,group: self.categories[item]!)
                }
            }
            .navigationBarTitle(Text("精选"))
            .navigationBarItems(
                trailing: Image(systemName:"person.circle.fill")
                    .imageScale(.large)
            )
        }
    }
}

// 单组landmark
struct Landmark_pack: View{
    let key: String
    let group: [Landmark]

    var body: some View {
        VStack(alignment:.leading){
            Text(key).font(.headline)
            ScrollView(.horizontal,showsIndicators:false){
                HStack(spacing: 15){
                    ForEach(group){ city in
                        Home_landmark_cell(cell: city)
                    }
                }
            }
        }
        .padding(.leading,0)
        .padding([.top,.bottom])
    }
}


// 单个landmarkCell
struct Home_landmark_cell: View{
    let cell: Landmark
    
    var body: some View{
        VStack(alignment: .leading){
            Image(cell.imageName)
                .resizable()
                .frame(width: 155, height: 155, alignment: .center)
                .cornerRadius(5)
            Text(cell.name)
                .font(.caption)
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

