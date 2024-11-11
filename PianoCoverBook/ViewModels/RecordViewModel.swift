//
//  RecordViewModel.swift
//  PianoCoverBook
//
//  Created by 仲優樹 on 2024/11/11.
//

import SwiftUI
import RealmSwift

class RecordViewModel: ObservableObject {
    @Published private var model = RecordModel()
    
    var musicName: String {
        get { model.musicNameText }
        set { model.musicNameText = newValue }
    }
    
    var artistName: String {
        get { model.artistNameNameText }
        set { model.artistNameNameText = newValue }
    }
    
    var memo: String {
        get { model.memoText }
        set { model.memoText = newValue }
    }
    
    // 試しに書いてみたコード　「@Published」を使うのは確定。
    
    @Published var rightHandCircleProgress: CGFloat = 1.0
    @Published var leftHandCircleProgress: CGFloat = 1.0
    
    var rightHandCirclePercentage: Int { Int(rightHandCircleProgress * 100.0) }
    var leftHandCirclePercentage: Int { Int(leftHandCircleProgress * 100.0) }
    
    var rightHandCirclePercentageNum: Int {
        get {
            return Int(rightHandCircleProgress * 100)
        }
        set {
            model.rightHandInt = newValue
        }
    }
  
    var leftHandCirclePercentageNum: Int {
        get {
            return Int(leftHandCircleProgress * 100)
        }
        set {
            model.leftHandInt = newValue
        }
    }
    
    var isMusicNameEmpty: Bool {
        musicName.trimmingCharacters(in: .whitespaces).isEmpty
    }
    
    var isArtistNameEmpty: Bool {
        artistName.trimmingCharacters(in: .whitespaces).isEmpty
    }
    
    var isMemoEmpty: Bool {
        memo.trimmingCharacters(in: .whitespaces).isEmpty
    }
    
    func handleAddMusicInfoButtonTap() {
        model.addMusicInfoReg()
    }
}
