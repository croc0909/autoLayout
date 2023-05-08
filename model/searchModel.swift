//
//  searchModel.swift
//  autoLayout
//
//  Created by AndyLin林棋瀚 on 2023/5/1.
//

import Foundation
import UIKit

struct searchModel: Codable{
    let imageName:String
    let contentText: String
    let contentType: String
}

var searchData = [
    searchModel(imageName: "Better Living", contentText: "Better Living", contentType: "Movie"),
    searchModel(imageName: "Tunnels and Spaces", contentText: "Tunnels and Spaces", contentType: "Movie"),
    searchModel(imageName: "Modern Touches", contentText: "Modern Touches", contentType: "Movie"),
    searchModel(imageName: "Future Building", contentText: "Future Building", contentType: "Movie"),
    searchModel(imageName: "Light and More", contentText: "Light and More", contentType: "Movie"),
    searchModel(imageName: "Classical Structures", contentText: "Classical Structures", contentType: "Movie"),
    searchModel(imageName: "Wave Cycle", contentText: "Wave Cycle", contentType: "Movie"),
    searchModel(imageName: "Planet Fugni", contentText: "Planet Fugni", contentType: "Movie")]

