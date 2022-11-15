//
//  MySwiftUIView.swift
//  UIKit_in_SwiftUI_Sample
//
//  Created by Smaillim Paz on 14.11.22.
//

import SwiftUI

// MARK: Using UIViewController as SwiftUI View
// The UIViewController  needs to be transformed in a way that SwiftUI
// can understand in Order to be used as a SwiftUI View.

// Three things are needed to make a UIViewController works inside a SwiftUI View.
// 1 - The SwiftUI view conforms to UIViewControllerRepresentable protocol.
// 3 - The protocol knows what kind of UIViewController the SwiftUIView represents.
// 2 - The two required methods are Implemented "makeUIViewController() and updateUIViewController()".



import SwiftUI

// MARK: UIViewControllerRepresentable
// This protocol is a SwiftUI view that represents a UIKit view controller.
// "UIViewControllerRepresentable" conforms to the View protocol,
// which makes it usable as a view in the SwiftUI world.
struct MySwiftUIView: UIViewControllerRepresentable {
    
    // MARK: typealias UIViewControllerType
    // The protocol needs to know what kind of UIViewController MySwiftUIView is going to represent.
    // This is done by explicitly defining "typealias UIViewControllerType".
    // In this case, we want our MySwiftUIView represents MyUIViewController.
    typealias UIViewControllerType = MyUIViewController
    
    // MARK: makeUIViewController
    //The makeUIViewController method expected us to return an instance of MyViewController.
    func makeUIViewController(context: Context) -> MyUIViewController {
        
        // Create the view controller object and Configure its initial state.
        let label = MyUIViewController()
        // some configurations if needed.
        //
        //

        return label
    }
    
    // MARK: updateUIViewController
    // The updateUIViewController method is called when there is an update from SwiftUI.
    func updateUIViewController(_ uiViewController: MyUIViewController, context: Context) {
        
        // Place to update the view controller.
        return
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MySwiftUIView()
    }
}

