//
//  SettingView.swift
//  PianoCoverBook
//
//  Created by 仲優樹 on 2024/10/17.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.dismiss) private var dismiss
    private let build = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
    
    var body: some View {
        NavigationStack {
            listView()
                .navigationTitle("設定")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    @ViewBuilder
    private func listView() -> some View {
        List {
            Section("このアプリについて") {
                aboutThisAppCellView()
                contactCellView()
                reviewCellView()
                shareThisAppCellView()
                versionCellView()
            }
        }
    }
    
    @ViewBuilder
    private func aboutThisAppCellView() -> some View {
        HStack {
            Text("このアプリについて")
            Spacer()
            Text(build)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
    }
    
    @ViewBuilder
    private func contactCellView() -> some View {
        HStack {
            Text("お問い合わせ")
            Spacer()
            Image(systemName: "arrowshape.turn.up.right")
                .font(Font.system(size: 14, weight: .bold))
                .foregroundStyle(.secondary)
                .opacity(0.5)
        }
    }
    
    @ViewBuilder
    private func reviewCellView() -> some View {
        HStack {
            Text("レビューする")
            Spacer()
            Text(build)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
    }
    
    @ViewBuilder
    private func shareThisAppCellView() -> some View {
        HStack {
            Text("このアプリを共有する")
            Spacer()
            Text(build)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
    }
    
    @ViewBuilder
    private func versionCellView() -> some View {
        HStack {
            Text("バージョン")
            Spacer()
            Text(build)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    SettingView()
}
