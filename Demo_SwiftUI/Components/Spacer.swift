//
//  Spacer.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation
/*
 Trong SwiftUI, Spacer là một modifier dùng để tạo ra khoảng trống linh hoạt giữa các view. Các Spacer này sẽ giúp tăng cường tính linh động trong việc thiết kế giao diện.

 Để sử dụng Spacer, bạn có thể đặt nó trực tiếp giữa các view hoặc giữa view và edge của màn hình. Sau đó, Spacer sẽ tự động thay đổi kích thước để đảm bảo khoảng trống giữa chúng luôn được giữ nguyên.

 Ví dụ:

 
 VStack {
     Text("View 1")
     Spacer()
     Text("View 2")
     Spacer()
     Text("View 3")
 }

 

 Trong ví dụ trên, Spacer sẽ tạo ra khoảng trống đồng đều giữa các Text view.

 

 

 Khi sử dụng Spacer trong SwiftUI, cần lưu ý một số điểm sau:

 - Spacer chỉ hoạt động với các view được đặt trong VStack, HStack hoặc ZStack.
 - Nếu bạn đặt nhiều Spacer liên tiếp nhau, chúng sẽ chia đều khoảng trống giữa chúng.
 - Nếu bạn muốn tạo ra một khoảng trống có kích thước cụ thể, hãy sử dụng hàm padding() thay vì Spacer.

 Ví dụ:

 
 VStack {
     Text("View 1")
     Spacer()
     Text("View 2")
     Spacer().frame(height: 50)
     Text("View 3")
 }

 

 Trong ví dụ trên, khoảng trống giữa View 2 và View 3 có kích thước là 50 pixel.

 Dưới đây là 20 ví dụ về cách sử dụng Spacer trong SwiftUI:

 //TODO:  Tạo khoảng trống giữa hai Text view:

 
 VStack {
     Text("Hello")
     Spacer()
     Text("World")
 }

 

 //TODO:  Tạo khoảng trống giữa hai Image view:

 
 VStack {
     Image(systemName: "person.circle.fill")
     Spacer()
     Image(systemName: "person.2.circle.fill")
 }

 

 //TODO:  Tạo khoảng trống giữa một Text view và một Button:

 
 VStack {
     Text("Welcome!")
     Spacer()
     Button("Get Started") {
         // Handle button tap
     }
 }

 

 //TODO:  Tạo khoảng trống giữa hai Text view, có kích thước cụ thể:

 
 VStack {
     Text("Hello")
     Spacer().frame(height: 50)
     Text("World")
 }

 

 //TODO:  Tạo khoảng trống giữa một Text view và một Image view:

 
 VStack {
     Text("Hello")
     Spacer()
     Image(systemName: "person.circle.fill")
 }

 

 //TODO:  Tạo khoảng trống giữa hai Button:

 
 HStack {
     Button("Cancel") {
         // Handle button tap
     }
     Spacer()
     Button("Save") {
         // Handle button tap
     }
 }

 

 //TODO:  Tạo khoảng trống giữa một Text view và một TextField:

 
 VStack {
     Text("Enter your name:")
     TextField("Name", text: $name)
     Spacer()
 }

 

 //TODO:  Tạo khoảng trống giữa hai VStack:

 
 VStack {
     Text("VStack 1")
 }
 Spacer()
 VStack {
     Text("VStack 2")
 }

 

 //TODO:  Tạo khoảng trống giữa một VStack và một Text view:

 
 VStack {
     Text("VStack")
     Spacer()
 }
 Text("Text")

 

 //TODO:  Tạo khoảng trống giữa hai HStack:

 
 HStack {
     Text("HStack 1")
 }
 Spacer()
 HStack {
     Text("HStack 2")
 }

 

 //TODO:  Tạo khoảng trống giữa một HStack và một Button:

 
 HStack {
     Text("HStack")
     Spacer()
     Button("Button") {
         // Handle button tap
     }
 }

 

 //TODO:  Tạo khoảng trống giữa một ZStack và một Text view:

 
 ZStack {
     Color.red
     Text("ZStack")
     Spacer()
 }

 

 //TODO:  Tạo khoảng trống giữa hai Color:

 
 VStack {
     Color.red
     Spacer()
     Color.blue
 }

 

 //TODO:  Tạo khoảng trống giữa hai VStack, với kích thước cụ thể:

 
 VStack {
     Text("VStack 1")
 }
 Spacer().frame(height: 50)
 VStack {
     Text("VStack 2")
 }

 

 //TODO:  Tạo khoảng trống giữa một Image view và một Button:

 
 HStack {
     Image(systemName: "person.circle.fill")
     Spacer()
     Button("Follow") {
         // Handle button tap
     }
 }

 

 //TODO:  Tạo khoảng trống giữa hai HStack, với kích thước cụ thể:

 
 HStack {
     Text("HStack 1")
 }
 Spacer().frame(width: 50)
 HStack {
     Text("HStack 2")
 }

 

 //TODO:  Tạo khoảng trống giữa hai Text view trong một VStack, với kích thước cụ thể:

 
 VStack {
     Text("Hello")
     Spacer().frame(height: 50)
     Text("World")
 }

 

 //TODO:  Tạo khoảng trống giữa một Button và một TextField:

 
 VStack {
     Button("Submit") {
         // Handle button tap
     }
     Spacer()
     TextField("Enter your name", text: $name)
 }

 

 //TODO:  Tạo khoảng trống giữa hai ZStack:

 
 ZStack {
     Color.red
 }
 Spacer()
 ZStack {
     Color.blue
 }

 

 //TODO:  Tạo khoảng trống giữa một VStack và một ScrollView:

 
 VStack {
     Text("Header")
     ScrollView {
         // Scrollable content
     }
     Spacer()
 }

 

 Dưới đây là 50 ví dụ khác về cách sử dụng Spacer trong SwiftUI:

 //TODO:  Tạo khoảng trống giữa hai Text view trong một HStack:

 
 HStack {
     Text("Hello")
     Spacer()
     Text("World")
 }

 

 //TODO:  Tạo khoảng trống giữa hai Image view trong một HStack:

 
 HStack {
     Image(systemName: "person.circle.fill")
     Spacer()
     Image(systemName: "person.2.circle.fill")
 }

 

 //TODO:  Tạo khoảng trống giữa một Text view và một VStack:

 
 Text("Welcome!")
 VStack {
     Spacer()
     Button("Get Started") {
         // Handle button tap
     }
 }

 

 //TODO:  Tạo khoảng trống giữa hai VStack, với kích thước cụ thể:

 
 VStack {
     Text("VStack 1")
     Spacer().frame(height: 50)
     Text("VStack 2")
 }

 

 //TODO:  Tạo khoảng trống giữa một Text view và một ZStack:

 
 Text("Hello")
 ZStack {
     Spacer()
     Image(systemName: "person.circle.fill")
 }

 

 //TODO:  Tạo khoảng trống giữa một HStack và một TextField:

 
 HStack {
     Text("Enter your name:")
     TextField("Name", text: $name)
     Spacer()
 }

 

 //TODO:  Tạo khoảng trống giữa hai VStack, với kích thước cụ thể:

 
 VStack {
     Text("VStack 1")
     Spacer().frame(width: 50)
     Text("VStack 2")
 }

 

 //TODO:  Tạo khoảng trống giữa một Image view và một VStack:

 
 Image(systemName: "person.circle.fill")
 VStack {
     Spacer()
     Button("Follow") {
         // Handle button tap
     }
 }

 

 //TODO:  Tạo khoảng trống giữa hai ScrollView:

 
 ScrollView {
     // Scrollable content
 }
 Spacer()
 ScrollView {
     // Scrollable content
 }

 

 //TODO:  Tạo khoảng trống giữa hai Text view trong một ZStack, với kích thước cụ thể:

 
 ZStack {
     Text("Hello")
     Spacer().frame(height: 50)
     Text("World")
 }

 

 //TODO:  Tạo khoảng trống giữa một Text view và một ScrollView:

 
 Text("Header")
 Spacer()
 ScrollView {
     // Scrollable content
 }

 

 //TODO:  Tạo khoảng trống giữa một VStack và một Image view:

 
 VStack {
     Text("Hello")
     Spacer()
     Image(systemName: "person.circle.fill")
 }

 

 //TODO:  Tạo khoảng trống giữa một VStack và một HStack:

 
 VStack {
     Text("VStack")
     Spacer()
 }
 HStack {
     Text("HStack")
 }

 

 //TODO:  Tạo khoảng trống giữa hai ZStack, với kích thước cụ thể:

 
 ZStack {
     Color.red
     Spacer().frame(height: 50)
     Text("ZStack")
 }

 

 //TODO:  Tạo khoảng trống giữa một ScrollView và một VStack:

 
 ScrollView {
     // Scrollable content
 }
 Spacer()
 VStack {
     Text("Footer")
 }

 

 //TODO:  Tạo khoảng trống giữa hai VStack, với kích thước cụ thể:

 
 VStack {
     Text("VStack 1")
 }
 Spacer().frame(height: 50)
 VStack {
     Text("VStack 2")
 }

 

 //TODO:  Tạo khoảng trống giữa một VStack và một TextField:

 
 VStack {
     Text("Enter your name:")
     TextField("Name", text: $name)
     Spacer()
 }

 

 //TODO:  Tạo khoảng trống giữa một VStack và một Button:

 
 VStack {
     Text("Header")
     Spacer()
     Button("Get Started") {
         // Handle button tap
     }
 }

 

 //TODO:  Tạo khoảng trống giữa hai ScrollView, với kích thước cụ thể:

 
 ScrollView {
     // Scrollable content
 }
 Spacer().frame(height: 50)
 ScrollView {
     // Scrollable content
 }

 

 //TODO:  Tạo khoảng trống giữa hai VStack và một Button:

 
 VStack {
     Text("Header")
     Spacer()
     Button("Get Started") {
         // Handle button tap
     }
     Spacer()
 }
 VStack {
     Text("Footer")
 }

 

 //TODO:  Tạo khoảng trống giữa một VStack và một ScrollView, với kích thước cụ thể:

 
 VStack {
     Text("Header")
     ScrollView {
         // Scrollable content
     }
 }
 Spacer().frame(height: 50)
 VStack {
     Text("Footer")
 }

 

 //TODO:  Tạo khoảng trống giữa hai HStack, với kích thước cụ thể:

 
 HStack {
     Text("HStack 1")
 }
 Spacer().frame(width: 50)
 HStack {
     Text("HStack 2")
 }

 

 //TODO:  Tạo khoảng trống giữa một HStack và một ScrollView:

 
 HStack {
     Text("Header")
     Spacer()
 }
 ScrollView {
     // Scrollable content
 }

 

 //TODO:  Tạo khoảng trống giữa một VStack và một ZStack:

 
 VStack {
     Text("Header")
     Spacer()
 }
 ZStack {
     Color.red
 }

 

 //TODO:  Tạo khoảng trống giữa hai Image view và một Text view:

 
 HStack {
     Image(systemName: "person.circle.fill")
     Spacer()
     Text("Hello")
     Spacer()
     Image(systemName: "person.2.circle.fill")
 }

 

 //TODO:  Tạo khoảng trống giữa một ScrollView và một ZStack:

 
 ScrollView {
     // Scrollable content
 }
 Spacer()
 ZStack {
     Color.red
     Text("Footer")
 }

 

 //TODO:  Tạo khoảng trống giữa một HStack và một ZStack:

 
 HStack {
     Text("Header")
 }
 Spacer()
 ZStack {
     Color.red
     Text("Footer")
 }

 

 //TODO:  Tạo khoảng trống giữa hai ScrollView và một VStack:

 
 ScrollView {
     // Scrollable content
 }
 Spacer()
 VStack {
     Text("Footer")
 }
 Spacer()
 ScrollView {
     // Scrollable content
 }

 

 //TODO:  Tạo khoảng trống giữa hai ScrollView, với kích thước cụ thể:

 
 ScrollView {
     // Scrollable content
 }
 Spacer().frame(width: 50)
 ScrollView {
     // Scrollable content
 }

 

 //TODO:  Tạo khoảng trống giữa một VStack và một HStack:

 
 VStack {
     Text("Header")
 }
 Spacer()
 HStack {
     Text("Footer")
 }

 
 */
