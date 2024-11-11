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
    var rightHandInt = 0
    var leftHandInt = 0
    
    mutating func addMusicInfoReg() {
        let musicInfo = MusicInfo()
        musicInfo.musicName = musicNameText
        musicInfo.artistName = artistNameNameText
        musicInfo.memo = memoText
        musicInfo.rightHandProgress = Int(rightHandInt * 100)
        musicInfo.leftHandProgress = Int(leftHandInt * 100)
        karaMojiRepository.addMusicInfo(musicInfo: musicInfo)
    }
}
