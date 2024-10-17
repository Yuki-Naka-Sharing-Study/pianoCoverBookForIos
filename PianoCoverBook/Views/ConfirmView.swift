//
//  ConfirmView.swift
//  PianoCoverBook
//
//  Created by 仲優樹 on 2024/10/17.
//

import SwiftUI

struct ConfirmView: View {
    var body: some View {
        Text("まだ記録がありません。\nピアノを練習して記録を追加しましょう。")
            .multilineTextAlignment(.center)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ConfirmView()
}
