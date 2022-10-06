//
//  ImageByTouch.swift
//  MobileDevThree
//
//  Created by Danil Peregorodiev on 06.10.2022.
//

import SwiftUI

struct ImageByTouch: View {
    @State var image = ImageView(image: "")
    var body: some View {
        VStack {
            image
            ZStack {
                Capsule()
                    .frame(width: 200, height: 55)
                    .foregroundColor(.mint)
                Text("    Показать\nизображение")
                    .foregroundColor(.white)
            }.onTapGesture {
                image = ImageView(image: "Icon")
            }
            ZStack {
                Capsule()
                    .frame(width: 200, height: 55)
                    .foregroundColor(.mint)
                Text("Очистить")
                    .foregroundColor(.white)
            }.onTapGesture {
                image = ImageView(image: "")
            }
        }
    }
}

struct ImageByTouch_Previews: PreviewProvider {
    static var previews: some View {
        ImageByTouch()
    }
}
