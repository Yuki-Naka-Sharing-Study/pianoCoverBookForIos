//
//  MusicInfo.swift
//  PianoCoverBook
//
//  Created by 仲優樹 on 2024/11/11.
//

import SwiftUI
import Foundation
import RealmSwift

class MusicInfo: Object {
    @Persisted(primaryKey: true) var id = UUID().uuidString
    @Persisted var musicName: String
    @Persisted var artistName: String
    @Persisted var memo: String
    @Persisted var rightHandProgress: Int
    @Persisted var leftHandProgress: Int
}
