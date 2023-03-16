//
//  ContentView.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 14/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Group {
                Text("View 1")
                Text("View 2")
                Text("View 3")
                Button(action:{
                    var a: Int {
                        get {
                            // lấy giá trị của a
                            return 1
                        }
                        set {
                            // thiết lập giá trị mới cho a
                            return 2
                        }
                    }
                }){
                    Text("12313")
                }
            }


        }
    }
}








struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
