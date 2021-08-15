//
//  landmarkDetail.swift
//  chinaLandmark
//
//  Created by tcyeee on 2021/8/13.
//

import SwiftUI

struct LandmarkDetail : View {
    var body: some View {
        VStack {
            MapView()
                .frame( height : 350 )
                .edgesIgnoringSafeArea(.top)
            
            Image("avator_250x250").clipShape(Circle())
                .overlay(Circle().stroke(Color.white,lineWidth: 5))
                .shadow(radius: 10)
                .offset( y: -130)
                .padding(.bottom,-130)

            VStack (alignment: .leading,spacing:8){
                Text("东方明珠").font(.title)
                HStack{
                    Text("上海").font(.subheadline)
                    Spacer()
                    Text("上海市").font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
        .navigationBarTitle(Text("东方明珠"), displayMode: .inline)
    }
}
