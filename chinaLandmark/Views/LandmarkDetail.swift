//
//  landmarkDetail.swift
//  chinaLandmark
//
//  Created by tcyeee on 2021/8/13.
//

import SwiftUI

struct LandmarkDetail : View {
    let detail: Landmark
    @EnvironmentObject var userData: UserData
    
    var landmarkIndex: Int{
        userData.userLandmarks.firstIndex ( where: { $0.id == detail.id })!
    }
    
    var body: some View {
        VStack {
            MapView(center: detail.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame( height : 350 )
            
            Image(detail.imageName)
                .resizable()
                .frame(width: 250, height: 250, alignment: .center)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white,lineWidth: 5))
                .shadow(radius: 10)
                .offset( y: -130)
                .padding(.bottom,-130)

            VStack (alignment: .leading,spacing:8){
                HStack {
                    Text(detail.name).font(.title)
                    Button(action: {
                        self.userData.userLandmarks[self.landmarkIndex].isFavorite.toggle()
                    }, label: {
                        if userData.userLandmarks[self.landmarkIndex].isFavorite {
                            Image(systemName: "star").foregroundColor(.gray)
                        }else{
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                        }
                    })
                }
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

//
//
//struct LandmarkDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        LandmarkDetail(detail: landmarks[0])
//            .environmentObject(UserData())
//    }
//}
