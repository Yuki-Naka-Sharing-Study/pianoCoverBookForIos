//
//  Circles_Trim_Outline.swift
//  PianoCoverBook
//
//  Created by 仲優樹 on 2024/10/17.
//

import SwiftUI

struct RecordView : View {
    @Environment(\.dismiss) private var dismiss
    @ObservedObject var viewModel: RecordViewModel
    
    @State private var rightHandCircleProgress: CGFloat = 1.0
    @State private var leftHandCircleProgress: CGFloat = 1.0
    
    private var rightHandCirclePercentage: Int { Int(rightHandCircleProgress * 100.0) }
    private var leftHandCirclePercentage: Int { Int(leftHandCircleProgress * 100.0) }
    
    var body: some View {
        ZStack {
            // 背景色を設定
            Color.white.edgesIgnoringSafeArea(.all)
            VStack(spacing: 10) {
                
                HStack {
                    Text("曲名")
                        .font(.title3)
                        .padding(.leading)
                    
                    TextField("ラ・カンパネラ", text: $viewModel.musicName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 2)
                        )
                        .padding(.horizontal)
                }
                
                HStack {
                    Text("アーティスト名")
                        .font(.title3)
                        .padding(.leading)
                    TextField("リスト", text: $viewModel.artistName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 2)
                        )
                        .padding(.horizontal)
                }
                
                HStack {
                    Text("メモ")
                        .font(.title3)
                        .padding(.leading)
                        .padding(.bottom)
                    TextField("アルペジオが上手く弾けない。", text: $viewModel.memo)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 2)
                        )
                        .padding(.horizontal)
                        .padding(.bottom)
                }
                
                Text("右手の習熟度")
                    .font(.title3)
                
                Circle()
                    .trim(from: 0, to: rightHandCircleProgress)
                    .stroke(Color.purple,
                            style: StrokeStyle(lineWidth: 10,
                                               lineCap: CGLineCap.round))
                    .frame(height: 150)
                    .rotationEffect(.degrees(-90))
                    .overlay(
                        Text("\(rightHandCirclePercentage)%")
                            .font(.largeTitle)
                            .foregroundStyle(.black))
                    .padding(10)
                
                VStack {
                    HStack {
                        Text("0%")
                            .padding(.leading)
                        Slider(value: $rightHandCircleProgress)
                        Text("100%")
                            .padding(.trailing)
                    }
                }
                
                Text("左手の習熟度")
                    .font(.title3)
                    .padding(.top)
                
                Circle()
                    .trim(from: 0, to: leftHandCircleProgress)
                    .stroke(Color.purple,
                            style: StrokeStyle(lineWidth: 10,
                                               lineCap: CGLineCap.round))
                    .frame(height: 150)
                    .rotationEffect(.degrees(-90))
                    .overlay(
                        Text("\(leftHandCirclePercentage)%")
                            .font(.largeTitle)
                            .foregroundStyle(.black))
                    .padding(10)
                
                VStack {
                    HStack {
                        Text("0%")
                            .padding(.leading)
                        Slider(value: $leftHandCircleProgress)
                        Text("100%")
                            .padding(.trailing)
                    }
                }
                
                Button(action: {
                    viewModel.handleAddMusicInfoButtonTap()
                    dismiss()
                }) {
                    Text("完了")
                }
                .buttonStyle(.borderedProminent)
                .disabled(
                    viewModel.isMusicNameEmpty
                    || viewModel.isArtistNameEmpty
                    || viewModel.isMemoEmpty
                )
            }
        }
    }
}

struct Circles_Trim_Outline_Previews : PreviewProvider {
    static var previews: some View {
        RecordView(viewModel: RecordViewModel())
    }
}

#Preview {
    RecordView(viewModel: RecordViewModel())
}
