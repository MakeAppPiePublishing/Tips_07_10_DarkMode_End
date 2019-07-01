//
//  CellUIView.swift
//  PizzaHistory
//
//  Created by Steven Lipton on 6/23/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct CellUIView : View {
    var body: some View {
        return HStack{
            Image("p.circle.fill")
            Text("Pizza City").font(.title)
            
        }
    }
}

#if DEBUG
struct CellUIView_Previews : PreviewProvider {
    static var previews: some View {
        CellUIView()
    }
}
#endif
