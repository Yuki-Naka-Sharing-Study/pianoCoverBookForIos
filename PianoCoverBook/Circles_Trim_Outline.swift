//
//  Circles_Trim_Outline.swift
//  PianoCoverBook
//
//  Created by 仲優樹 on 2024/10/17.
//

import SwiftUI

struct Circles_Trim_Outline : View {
    @State private var artistName: String = ""
    @State private var musicName: String = ""
    
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
                    Text("アーティスト名")
                        .font(.title3)
                        .padding(.leading)
                    TextField("リスト", text: $artistName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 2)
                        )
                        .padding(.horizontal)
                }
                
                HStack {
                    Text("曲名")
                        .font(.title3)
                        .padding(.leading)
                        .padding(.bottom)
                    TextField("ラ・カンパネラ", text: $musicName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 2)
                        )
                        .padding(.horizontal)
                        .padding(.bottom)
                }
                
                Text("右手のカバー度")
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
                
                Text("左手のカバー度")
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
            }
        }
    }
}

struct Circles_Trim_Outline_Previews : PreviewProvider {
    static var previews: some View {
        Circles_Trim_Outline()
    }
}

#Preview {
    Circles_Trim_Outline()
}
