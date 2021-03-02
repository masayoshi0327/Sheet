//
//  Answer.swift
//  Sheet
//
//  Created by 澤崎正佳 on 2021/03/02.
//

import SwiftUI

struct Answer: View {
    
    let answer: String
    @Binding var moveAnswer: Bool
    
    var body: some View {
        VStack{
            if answer == "パンダ" {
                Text("せいかい！！\nすごい！天才だ！")
                    .font(.title)
                Image("correct")
                
            }else{
                Text("ちがうよ。もういちどもんだいをよく読んでみよう。")
                    .font(.title)
                Image("fault")
            }
            Button(action: {
                moveAnswer = false
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
