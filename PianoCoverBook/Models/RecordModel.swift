//
//  RecordModel.swift
//  PianoCoverBook
//
//  Created by 仲優樹 on 2024/11/11.
//

import Foundation
import RealmSwift

struct RecordModel {
    private let karaMojiRepository = KaraMojiRepository()
    
    var karaMojiNameText = ""
    var musicNameText = ""
    var artistNameNameText = ""
    var memoText = ""
}
