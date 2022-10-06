//
//  ImageView.swift
//  MobileDevThree
//
//  Created by Danil Peregorodiev on 06.10.2022.
//

import SwiftUI

struct ImageView: View {
    var image: String = "Icon"
    var body: some View {
        Image(image)
            .resizable()
            .frame(width: 300, height: 300, alignment: .center)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: "Icon")
    }
}
