//
//  ContentView.swift
//  UIKit_in_SwiftUI_Sample
//
//  Created by Smaillim Paz on 14.11.22.
//

import SwiftUI

// After the view that can represent the view controller is created,
// this one can be used just like a normal SwiftUI view.
struct ContentView: View {
    @State var isPresented = false
    
    var body: some View {
        Button("Show MyUIViewController") {
            isPresented = true
        }
        .sheet(isPresented: $isPresented) {
            MySwiftUIView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
