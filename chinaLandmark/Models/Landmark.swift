//
//  Landmark.swift
//  chinaLandmark
//
//  Created by tcyeee on 2021/8/15.
//

import SwiftUI
import CoreLocation

struct Landmark : Identifiable {
    var id: Int
    var category: String
    var name: String
    var city: String
    var province: String
    
    var latitude: Double
    var longitude: Double
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: latitude, longitude: longitude
        )
    }
    
    var imageName: String
    var isFavorite: Bool
    var isFeatured: Bool
    
}


let landmarks = [
    Landmark(id: 1, category: "现代建筑", name: "天安门", city: "北京", province: "北京市", latitude: 39.9087243, longitude: 116.3952859, imageName: "one", isFavorite: true, isFeatured: true),
    Landmark(id: 2, category: "现代建筑", name: "西湖", city: "杭州", province: "浙江省", latitude: 38.9087243, longitude: 116.3952859, imageName: "two", isFavorite: false, isFeatured: true),
    Landmark(id: 3, category: "现代建筑", name: "天安门", city: "北京", province: "北京市", latitude: 39.9087243, longitude: 116.3952859, imageName: "one", isFavorite: true, isFeatured: true),
    Landmark(id: 4, category: "现代建筑", name: "西湖", city: "杭州", province: "浙江省", latitude: 38.9087243, longitude: 116.3952859, imageName: "two", isFavorite: false, isFeatured: true),
    Landmark(id: 5, category: "现代建筑", name: "天安门", city: "北京", province: "北京市", latitude: 39.9087243, longitude: 116.3952859, imageName: "one", isFavorite: true, isFeatured: true),
    Landmark(id: 6, category: "城市风景", name: "西湖", city: "杭州", province: "浙江省", latitude: 38.9087243, longitude: 116.3952859, imageName: "two", isFavorite: false, isFeatured: true),
    Landmark(id: 7, category: "城市风景", name: "天安门", city: "北京", province: "北京市", latitude: 39.9087243, longitude: 116.3952859, imageName: "one", isFavorite: true, isFeatured: true),
    Landmark(id: 8, category: "城市风景", name: "西湖", city: "杭州", province: "浙江省", latitude: 38.9087243, longitude: 116.3952859, imageName: "two", isFavorite: false, isFeatured: true),
    Landmark(id: 9, category: "城市风景", name: "天安门", city: "北京", province: "北京市", latitude: 39.9087243, longitude: 116.3952859, imageName: "one", isFavorite: true, isFeatured: true),
    Landmark(id: 10, category: "自然风光", name: "西湖", city: "杭州", province: "浙江省", latitude: 38.9087243, longitude: 116.3952859, imageName: "two", isFavorite: false, isFeatured: true),
    Landmark(id: 11, category: "自然风光", name: "天安门", city: "北京", province: "北京市", latitude: 39.9087243, longitude: 116.3952859, imageName: "one", isFavorite: true, isFeatured: true),
    Landmark(id: 12, category: "自然风光", name: "西湖", city: "杭州", province: "浙江省", latitude: 38.9087243, longitude: 116.3952859, imageName: "two", isFavorite: false, isFeatured: true),
]


let featuredLandmarks = landmarks.filter{ $0.isFeatured }
