//
//  Overlay.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation
/*
 # Hướng dẫn sử dụng Resizeable() trong SwiftUI

 //TODO: Trong SwiftUI, Resizeable() là một modifier được sử dụng để điều chỉnh kích thước của một view. Nó cho phép người dùng tự do thay đổi kích thước view theo ý muốn, giúp tăng tính tương tác của ứng dụng.

 Ví dụ sau đây sẽ minh họa cách sử dụng Resizeable():

 ```
 struct ContentView: View {
     var body: some View {
         Text("Hello, world!")
             .font(.largeTitle)
             .padding()
             .background(Color.blue)
             .foregroundColor(.white)
             .clipShape(Circle())
             .overlay(
                 Circle()
                     .stroke(Color.white, lineWidth: 4)
                     .padding(20)
             )
             .frame(width: 300, height: 300)
             .resizable()
     }
 }

 ```

 Ở đây, chúng ta đã sử dụng Resizeable() để cho phép người dùng thay đổi kích thước của view "Hello, world!".

 # Cách hoạt động của Overlay trong SwiftUI

 //TODO:  Overlay là một modifier trong SwiftUI, cho phép thêm một view vào trên cùng của view gốc. Nó được sử dụng để thêm các thành phần bổ sung vào view chính, giúp tăng tính tương tác và trải nghiệm người dùng.

 Ví dụ sau đây sẽ minh họa cách sử dụng Overlay():

 ```
 struct ContentView: View {
     var body: some View {
         VStack {
             Image("nature")
                 .resizable()
                 .frame(width: 300, height: 200)
                 .overlay(
                     Text("Nature")
                         .font(.largeTitle)
                         .foregroundColor(.white)
                         .padding(10)
                         .background(Color.black.opacity(0.5))
                         .cornerRadius(10)
                         .padding(5),
                     alignment: .bottomTrailing
                 )
         }
     }
 }

 ```

 Ở đây, chúng ta đã sử dụng Overlay() để thêm một Text view lên trên cùng của Image view.

 ```
 // Example 1

 struct ContentView: View {
     var body: some View {
         VStack {
             Text("Hello, world!")
                 .font(.largeTitle)
                 .foregroundColor(.white)
                 .padding()
                 .background(Color.blue)
                 .cornerRadius(10)
                 .overlay(
                     RoundedRectangle(cornerRadius: 10)
                         .stroke(Color.white, lineWidth: 4)
                 )
         }
     }
 }

 // Example 2

 struct ContentView: View {
     var body: some View {
         VStack {
             Image("nature")
                 .resizable()
                 .frame(width: 300, height: 200)
                 .overlay(
                     Rectangle()
                         .foregroundColor(.black)
                         .opacity(0.6),
                     alignment: .bottom
                 )
         }
     }
 }

 // Example 3

 struct ContentView: View {
     var body: some View {
         VStack {
             Text("Hello, world!")
                 .font(.largeTitle)
                 .foregroundColor(.white)
                 .padding()
                 .background(Color.blue)
                 .cornerRadius(10)
                 .overlay(
                     Text("Overlay")
                         .foregroundColor(.white)
                         .padding(5),
                     alignment: .top
                 )
         }
     }
 }

 // Example 4

 struct ContentView: View {
     var body: some View {
         VStack {
             Image(systemName: "cloud.sun.fill")
                 .font(.largeTitle)
                 .foregroundColor(.yellow)
                 .overlay(
                     Text("Sunny")
                         .font(.caption)
                         .fontWeight(.bold)
                         .padding(5)
                         .background(Color.white.opacity(0.5))
                         .clipShape(Capsule())
                         .padding(5),
                     alignment: .topTrailing
                 )
         }
     }
 }

 // Example 5

 struct ContentView: View {
     var body: some View {
         VStack {
             Text("Hello, world!")
                 .font(.largeTitle)
                 .foregroundColor(.white)
                 .padding()
                 .background(Color.blue)
                 .cornerRadius(10)
                 .overlay(
                     Text("Overlay")
                         .foregroundColor(.white)
                         .padding(5),
                     alignment: .bottom
                 )
         }
     }
 }

 // Example 6

 struct ContentView: View {
     var body: some View {
         VStack {
             Image("nature")
                 .resizable()
                 .frame(width: 300, height: 200)
                 .overlay(
                     Circle()
                         .foregroundColor(.black)
                         .opacity(0.6)
                         .frame(width: 100, height: 100)
                 )
         }
     }
 }

 // Example 7

 struct ContentView: View {
     var body: some View {
         VStack {
             Text("Hello, world!")
                 .font(.largeTitle)
                 .foregroundColor(.white)
                 .padding()
                 .background(Color.blue)
                 .cornerRadius(10)
                 .overlay(
                     Text("Overlay")
                         .foregroundColor(.white)
                         .padding(5),
                     alignment: .bottomTrailing
                 )
         }
     }
 }

 // Example 8

 struct ContentView: View {
     var body: some View {
         VStack {
             Image("nature")
                 .resizable()
                 .frame(width: 300, height: 200)
                 .overlay(
                     VStack {
                         Text("Nature")
                             .font(.title)
                             .foregroundColor(.white)
                             .padding(10)
                         Spacer()
                     }
                     .background(Color.black.opacity(0.5)),
                     alignment: .bottom
                 )
         }
     }
 }

 // Example 9

 struct ContentView: View {
     var body: some View {
         VStack {
             Text("Hello, world!")
                 .font(.largeTitle)
                 .foregroundColor(.white)
                 .padding()
                 .background(Color.blue)
                 .cornerRadius(10)
                 .overlay(
                     VStack {
                         Text("Overlay")
                             .foregroundColor(.white)
                             .padding(5)
                         Spacer()
                     }
                     .background(Color.black.opacity(0.5)),
                     alignment: .topLeading
                 )
         }
     }
 }

 // Example 10

 struct ContentView: View {
     var body: some View {
         VStack {
             Image("nature")
                 .resizable()
                 .frame(width: 300, height: 200)
                 .overlay(
                     VStack {
                         Text("Nature")
                             .font(.title)
                             .foregroundColor(.white)
                             .padding(10)
                         Spacer()
                     }
                     .background(Color.black.opacity(0.5)),
                     alignment: .topTrailing
                 )
         }
     }
 }

 // Example 11

 struct ContentView: View {
     var body: some View {
         VStack {
             Text("Hello, world!")
                 .font(.largeTitle)
                 .foregroundColor(.white)
                 .padding()
                 .background(Color.blue)
                 .cornerRadius(10)
                 .overlay(
                     VStack {
                         Text("Overlay")
                             .foregroundColor(.white)
                             .padding(5)
                         Spacer()
                     }
                     .background(Color.black.opacity(0.5)),
                     alignment: .leading
                 )
         }
     }
 }

 // Example 12

 struct ContentView: View {
     var body: some View {
         VStack {
             Image("nature")
                 .resizable()
                 .frame(width: 300, height: 200)
                 .overlay(
                     VStack {
                         Text("Nature")
                             .font(.title)
                             .foregroundColor(.white)
                             .padding(10)
                         Spacer()
                     }
                     .background(Color.black.opacity(0.5)),
                     alignment: .trailing
                 )
         }
     }
 }

 // Example 13

 struct ContentView: View {
     var body: some View {
         VStack {
             Text("Hello, world!")
                 .font(.largeTitle)
                 .foregroundColor(.white)
                 .padding()
                 .background(Color.blue)
                 .cornerRadius(10)
                 .overlay(
                     VStack {
                         Text("Overlay")
                             .foregroundColor(.white)
                             .padding(5)
                         Spacer()
                     }
                     .background(Color.black.opacity(0.5)),
                     alignment: .center
                 )
         }
     }
 }

 // Example 14

 struct ContentView: View {
     var body: some View {
         VStack {
             Image(systemName: "star.fill")
                 .font(.largeTitle)
                 .foregroundColor(.yellow)
                 .overlay(
                     Circle()
                         .foregroundColor(.black)
                         .opacity(0.6)
                         .frame(width: 100, height: 100),
                     alignment: .bottom
                 )
         }
     }
 }

 // Example 15

 struct ContentView: View {
     var body: some View {
         VStack {
             Text("Hello, world!")
                 .font(.largeTitle)
                 .foregroundColor(.white)
                 .padding()
                 .background(Color.blue)
                 .cornerRadius(10)
                 .overlay(
                     VStack {
                         Text("Overlay")
                             .foregroundColor(.white)
                             .padding(5)
                         Spacer()
                     }
                     .background(Color.black.opacity(0.5))
                     .cornerRadius(10),
                     alignment: .topLeading
                 )
         }
     }
 }

 // Example 16

 struct ContentView: View {
     var body: some View {
         VStack {
             Image("nature")
                 .resizable()
                 .frame(width: 300, height: 200)
                 .overlay(
                     VStack {
                         Text("Nature")
                             .font(.title)
                             .foregroundColor(.white)
                             .padding(10)
                         Spacer()
                     }
                     .background(Color.black.opacity(0.5))
                     .cornerRadius(10),
                     alignment: .topTrailing
                 )
         }
     }
 }

 // Example 17

 struct ContentView: View {
     var body: some View {
         VStack {
             Text("Hello, world!")
                 .font(.largeTitle)
                 .foregroundColor(.white)
                 .padding()
                 .background(Color.blue)
                 .cornerRadius(10)
                 .overlay(
                     VStack {
                         Text("Overlay")
                             .foregroundColor(.white)
                             .padding(5)
                         Spacer()
                     }
                     .background(Color.black.opacity(0.5))
                     .cornerRadius(10),
                     alignment: .bottomTrailing
                 )
         }
     }
 }

 // Example 18

 struct ContentView: View {
     var body: some View {
         VStack {
             Image(systemName: "moon.fill")
                 .font(.largeTitle)
                 .foregroundColor(.gray)
                 .overlay(
                     VStack {
                         Text("Night")
                             .font(.caption)
                             .padding(5)
                             .background(Color.white.opacity(0.5))
                             .clipShape(Capsule())
                         Spacer()
                     }
                     .background(Color.black.opacity(0.6))
                     .cornerRadius(10)
                     .padding(5),
                     alignment: .topLeading
                 )
         }
     }
 }

 // Example 19

 struct ContentView: View {
     var body: some View {
         VStack {
             Image("nature")
                 .resizable()
                 .frame(width: 300, height: 200)
                 .overlay(
                     VStack {
                         Text("Nature")
                             .font(.title)
                             .foregroundColor(.white)
                             .padding(10)
                         Spacer()
                     }
                     .background(Color.black.opacity(0.5))
                     .cornerRadius(10)
                     .padding(10),
                     alignment: .bottomLeading
                 )
         }
     }
 }

 // Example 20

 struct ContentView: View {
     var body: some View {
         VStack {
             Text("Hello, world!")
                 .font(.largeTitle)
                 .foregroundColor(.white)
                 .padding()
                 .background(Color.blue)
                 .cornerRadius(10)
                 .overlay(
                     VStack {
                         Text("Overlay")
                             .foregroundColor(.white)
                             .padding(5)
                         Spacer()
                     }
                     .background(Color.black.opacity(0.5))
                     .cornerRadius(10),
                     alignment: .center
                 )
         }
     }
 }

 ```

 */
