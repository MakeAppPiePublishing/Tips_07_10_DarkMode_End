//
//  SwiftUIView.swift
//  PizzaHistory
//
//  Created by Steven Lipton on 6/23/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI
let pizzaHistory = PizzaHistoryModel()
struct SwiftUIView : View {
    var body: some View {
        VStack {
           
                Text("Pizza History")
                    .font(.largeTitle)
            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                Image("PizzaDefault").relativeHeight(1.0/3.0)
                ScrollView {
                    Text("Click Below for the history of a pizza.").font(.body)
                    
                }
                List(0...3) { item in
                    ExtractedView()
            }.relativeHeight(0.5)
            Spacer()
        }
    }
}

#if DEBUG
struct SwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
#endif

struct ExtractedView : View {
    var body: some View {
        return HStack{
            Spacer()
            Image("Pizza History").relativeHeight(0.75)
            Text("Pizza City").font(.title)
            Spacer()
        }
    }
}
