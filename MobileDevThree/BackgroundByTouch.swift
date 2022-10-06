//
//  BackgroundByTouch.swift
//  MobileDevThree
//
//  Created by Danil Peregorodiev on 06.10.2022.
//

import SwiftUI

struct BackgroundByTouch: View {
    @State private var didTap1: Bool = false
    @State private var didTap2: Bool = false
    @State private var didTap3: Bool = false

    var body: some View {
        VStack {
            HStack {
                ZStack {
                    Capsule()
                        .frame(width: 220, height: 55)
                        .foregroundColor(.mint)
                    
                    Button(action: {
                        self.didTap1 = true
                    }) {
                        Text("Blue")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                    .frame(width: 2000, height: 2000, alignment: .center)
                    .background(didTap1 ? Color.blue : Color.clear)
                }
                
            }
            
//            VStack {
//                Button(action: {
//                    self.didTap2 = true
//                }) {
//                    Text("Red")
//                        .foregroundColor(.red)
//                        .font(.title)
//                }
//                .frame(width: 2000, height: 2000, alignment: .center)
//                .background(didTap2 ? Color.red : Color.clear)
//                .ignoresSafeArea()
//            }
        }
       
       
    }

}


struct BackgroundByTouch_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundByTouch()
    }
}
