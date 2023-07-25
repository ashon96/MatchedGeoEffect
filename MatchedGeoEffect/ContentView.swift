//
//  ContentView.swift
//  MatchedGeoEffect
//
//  Created by Andrew Shon on 7/25/23.
//

import SwiftUI

struct ContentView: View {
    @Namespace private var animation
    @State private var navPath = [String]()


    var body: some View {
        NavigationStack(path: $navPath) {
            VStack {
                Button {
                    withAnimation {
                        navPath.append("HI")
                    }
                } label: {
                    Text("HI")
                        .matchedGeometryEffect(id: "Hi", in: animation)
                }

                Button {
                    withAnimation {
                        navPath.append("BYE")
                    }
                } label: {
                    Text("BYE")
                        .matchedGeometryEffect(id: "BYE", in: animation)
                }
            }
            .navigationDestination(for: String.self) { item in
                VStack {
                    Spacer()
                    Text(item)
                        .matchedGeometryEffect(id: item, in: animation)
                }
            }
        }
    }













// Basic Implementation of matched geometry effect when views
// are in the same hierachy
//    @Namespace private var animation
//    @State private var stateOne = true
//
//    var body: some View {
//
//        HStack {
//            if stateOne {
//                Group {
//                    Text("Hi")
//                    Spacer()
//                }
//                .matchedGeometryEffect(id: "Test", in: animation)
//            } else {
//                Group {
//                    Spacer()
//                    Text("HI")
//                }
//                .matchedGeometryEffect(id: "Test", in: animation)
//            }
//        }
//        Button("Toggle State") {
//            withAnimation {
//                stateOne.toggle()
//            }
//        }
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
