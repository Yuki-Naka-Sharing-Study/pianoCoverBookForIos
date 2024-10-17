//
//  Image.swift
//  PianoCoverBook
//
//  Created by 仲優樹 on 2024/10/17.
//

import SwiftUI

extension Image {
    /// 画像の基本設定
    func resizableScaledToFit() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    static let gearshape        = Image(systemName: "gearshape")
    static let arrowupArrowdown = Image(systemName: "arrow.up.arrow.down")
    static let plus             = Image(systemName: "plus")
    static let pencilCircle     = Image(systemName: "pencil.circle")
    static let plusCircle       = Image(systemName: "plus.circle")
    static let trash            = Image(systemName: "trash")
    static let xmark            = Image(systemName: "xmark")
    static let photoBadgePlus   = Image(systemName: "photo.badge.plus")
}

