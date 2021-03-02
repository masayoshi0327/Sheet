//
//  Answer.swift
//  Sheet
//
//  Created by 澤崎正佳 on 2021/03/02.
//

import SwiftUI

struct Answer: View {
    
    let answer: String //前の画面のなぞなぞの答え
    @Binding var moveAnswer: Bool //前の画面のmoveAnswerを反映させるための変数
    
    var body: some View {
        VStack{
            //なぞなぞの答えが正解かどうかで表示を変える
            if answer == "パンダ" {
                Text("せいかい！！\nすごい！天才だ！")
                    .font(.title)
                Image("correct")
                
            }else{
                Text("ちがうよ。もういちどもんだいをよく読んでみよう。")
                    .font(.title)
                Image("fault")
            }
            //シートを閉じるためのトリガーになるボタン
            Button(action: {
                moveAnswer = false //シートを閉じるためのアクション
            }, label: {
                Text("もどる")
                    .font(.title)
                    .padding()
            })
        }
    }
}

struct Answer_Previews: PreviewProvider {
    static var previews: some View {
        Answer(answer: "パンダ", moveAnswer: ContentView().$moveAnswer)
    }
}
