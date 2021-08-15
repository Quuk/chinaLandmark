//
//  landmarkDetail.swift
//  chinaLandmark
//
//  Created by tcyeee on 2021/8/13.
//

import SwiftUI

struct LandmarkDetail : View {
    var detail: Landmark
    
    var body: some View {
        VStack {
            MapView(center: detail.locationCoordinate)
                .frame( height : 350 )
                .edgesIgnoringSafeArea(.top)
            
            Image(detail.imageName)
                .resizable()
                .frame(width: 250, height: 250, alignment: .center)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white,lineWidth: 5))
                .shadow(radius: 10)
                .offset( y: -130)
                .padding(.bottom,-130)

            VStack (alignment: .leading,spacing:8){
                Text(detail.name).font(.title)
                HStack{
                    Text(detail.city).font(.subheadline)
                    Spacer()
                    Text(detail.province).font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
        .navigationBarTitle(detail.name, displayMode: .inline)
    }
}



//struct LandmarkDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        LandmarkDetail(detail: landmarks[0])
//    }
//}
