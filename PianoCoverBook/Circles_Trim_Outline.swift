//
//  Circles_Trim_Outline.swift
//  PianoCoverBook
//
//  Created by 仲優樹 on 2024/10/17.
//

import SwiftUI

struct Circles_Trim_Outline : View {
    @State private var text: String = ""
    @State private var circleProgress: CGFloat = 1.0
    private var circlePercentage: Int { Int(circleProgress * 100.0) }
    
    var body: some View {
        ZStack {
            // 背景色を設定
            Color.white.edgesIgnoringSafeArea(.all) // ここで背景色を指定
            VStack(spacing: 10) {
                
                Text("カバーしている曲").font(.largeTitle)
                
                TextField("カバーしている曲を入力してください。", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .background(Color.white) // 背景色を設定
                    .overlay(
                        RoundedRectangle(cornerRadius: 5) // 角丸の矩形を作成
                            .stroke(Color.gray, lineWidth: 2) // 縁に色を設定
                    )
                    .padding()
                
                Text("右手のカバー度").font(.largeTitle)
                
                Circle()
                    .trim(from: 0, to: circleProgress)
                    .stroke(Color.purple,
                            style: StrokeStyle(lineWidth: 10,
                                               lineCap: CGLineCap.round))
                    .frame(height: 150)
                    .rotationEffect(.degrees(-90)) // Start from top
                    .overlay(
                        Text("\(circlePercentage)%")
                            .font(.largeTitle)
                            .foregroundStyle(.black))
                    .padding(10)
                
                VStack {
                    Text("Progress")
                    HStack {
                        Text("0%")
                        Slider(value: $circleProgress)
                        Text("100%")
                    }
                }.padding()
                
                Text("左手のカバー度").font(.largeTitle)
                
                Circle()
                    .trim(from: 0, to: circleProgress)
                    .stroke(Color.purple,
                            style: StrokeStyle(lineWidth: 10,
                                               lineCap: CGLineCap.round))
                    .frame(height: 150)
                    .rotationEffect(.degrees(-90)) // Start from top
                    .overlay(
                        Text("\(circlePercentage)%")
                            .font(.largeTitle)
                            .foregroundStyle(.black))
                    .padding(10)
                
                VStack {
                    Text("Progress")
                    HStack {
                        Text("0%")
                        Slider(value: $circleProgress)
                        Text("100%")
                    }
                }.padding()
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
