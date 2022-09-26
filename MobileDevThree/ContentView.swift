//
//  ContentView.swift
//  MobileDevThree
//
//  Created by Danil Peregorodiev on 26.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int =  0
    var body: some View {
        VStack {
            Text("Счетчик: \(count)")
                .font(.title)
            ZStack {
                Capsule()
                    .frame(width: 200, height: 55, alignment: .center)
                    .foregroundColor(.mint)
//                Text("Число нажатий: \(count)")
                Text("Нажми")
                    .foregroundColor(.white)
                    .font(.callout)
            }.onTapGesture {
                count += 1
            }
            ZStack {
                Capsule()
                    .frame(width: 200, height: 55, alignment: .center)
                    .foregroundColor(.mint)
                Text("Обнулить")
                    .foregroundColor(.white)
                    .font(.callout)
            }.onTapGesture {
                count = 0
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
