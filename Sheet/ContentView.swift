//
//  ContentView.swift
//  Sheet
//
//  Created by 澤崎正佳 on 2021/03/02.
//

import SwiftUI

struct ContentView: View {
    
    @State var answer = ""
    @State var moveAnswer = false
    
    var body: some View {
        VStack{
            Text("なぞなぞ")
                .font(.title)
                .padding()
            Text("パンはパンでも白黒のかわいいパンは\nぱ〜んだ？")
            TextField("こたえを書いてね", text: $answer)
                .frame(width: 200)
                .padding()
                .border(Color.black)
            Button(action: {
                moveAnswer = true
            }, label: {
                Text("わかった！")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
            .sheet(isPresented: $moveAnswer, content: {
                Answer(answer: answer, moveAnswer: $moveAnswer)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
