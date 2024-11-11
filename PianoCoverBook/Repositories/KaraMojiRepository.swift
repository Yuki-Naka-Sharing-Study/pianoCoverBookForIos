//
//  KaraMojiRepository.swift
//  PianoCoverBook
//
//  Created by 仲優樹 on 2024/11/11.
//

import RealmSwift

class KaraMojiRepository {
    private let realm = try! Realm()
    
    /// 音楽情報を追加
    func addMusicInfo(musicInfo: MusicInfo) {
        try! realm.write {
            realm.add(musicInfo, update: .modified)
            print("音楽情報:", musicInfo)
        }
    }
}
