//
//  skiModel.swift
//  autoLayout
//
//  Created by AndyLin林棋瀚 on 2023/5/3.
//

import Foundation
import UIKit

struct skiModel: Codable{
    let imageName:String
    let gameName:String
    let gameType:String
}

var skiData = [
skiModel(imageName: "Ski1",gameName: "Women’s Gold: USA vs JP",gameType: "Olympic Games"),
skiModel(imageName: "Ski2",gameName: "M Quarterfinal: USA vs TW ",gameType: "Olympic Games"),
skiModel(imageName: "Ski3",gameName: "TW vs TW",gameType: "Olympic Games"),
skiModel(imageName: "Ski4",gameName: "TW vs CH",gameType: "Olympic Games")
]
