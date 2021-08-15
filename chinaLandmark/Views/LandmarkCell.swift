//
//  LandmarkCell.swift
//  chinaLandmark
//
//  Created by tcyeee on 2021/8/15.
//

import SwiftUI

struct LandmarkCell: View {
    
    let landmark: Landmark
    
    var body: some View {
        HStack{
            Image(landmark.imageName)
                .resizable()   // 加上这个才能变化尺寸
                .frame(width: 50, height: 50, alignment: .center)
                .cornerRadius(8)
            
            Text(landmark.name)
            
            Spacer()
        }
    }
}

struct LandmarkCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkCell(landmark: landmarks[0])
            LandmarkCell(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
