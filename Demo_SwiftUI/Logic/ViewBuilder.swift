//
//  ViewBuilder.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation
/*
 #

 # Cách hoạt động của @ViewBuilder trong SwiftUI

 Trong SwiftUI, @ViewBuilder là một attribute được sử dụng để tạo ra một view hierarchy trong một closure. Khi sử dụng @ViewBuilder attribute, bạn có thể truyền nhiều hơn một View vào một thuộc tính hoặc một hàm.

 Chức năng chính của @ViewBuilder attribute là tạo ra một view hierarchy. Ví dụ, nếu bạn muốn tạo ra một VStack chứa hai Text, bạn có thể viết như sau:


 VStack {
     Text("Text 1")
     Text("Text 2")
 }



 Tuy nhiên, nếu bạn muốn tạo ra một VStack chứa nhiều hơn hai Text, bạn có thể sử dụng @ViewBuilder attribute như sau:


 func createVStack() -> some View {
     return VStack {
         Text("Text 1")
         Text("Text 2")
         Text("Text 3")
     }
 }



 Trong trường hợp này, hàm createVStack() trả về một VStack chứa ba Text.

 @ViewBuilder cũng có thể được sử dụng với các control flow statements như if/else. Ví dụ:


 func createView(condition: Bool) -> some View {
     if condition {
         return Text("True")
     } else {
         return Text("False")
     }
 }



 Trong trường hợp này, hàm createView() trả về một Text với nội dung là "True" nếu condition đúng, và trả về một Text với nội dung là "False" nếu condition sai.

 Trên đây là một số ví dụ về cách hoạt động của @ViewBuilder trong SwiftUI. Hy vọng nó sẽ giúp ích cho bạn trong quá trình phát triển ứng dụng SwiftUI của mình.

 Đây là một số ví dụ về cách sử dụng @ViewBuilder trong SwiftUI:

 //TODO:  Tạo một VStack chứa ba Text:


 VStack {
     Text("Text 1")
     Text("Text 2")
     Text("Text 3")
 }



 //TODO:  Tạo một VStack dựa trên một hàm:


 func createVStack() -> some View {
     return VStack {
         Text("Text 1")
         Text("Text 2")
         Text("Text 3")
     }
 }



 //TODO:  Sử dụng if/else trong @ViewBuilder:


 func createView(condition: Bool) -> some View {
     if condition {
         return Text("True")
     } else {
         return Text("False")
     }
 }



 //TODO:  Tạo một HStack chứa một Text và một Image:


 HStack {
     Text("Hello, world!")
     Image(systemName: "star")
 }



 //TODO:  Tạo một ZStack chứa một Text và một Rectangle:


 ZStack {
     Text("Hello, world!")
     Rectangle()
         .foregroundColor(.blue)
 }



 //TODO:  Tạo một HStack chứa một Image và một Text:


 HStack {
     Image(systemName: "star")
     Text("Hello, world!")
 }



 //TODO:  Tạo một HStack chứa hai Text và một Image:


 HStack {
     Text("Hello,")
     Text("world!")
     Image(systemName: "star")
 }



 //TODO:  Tạo một VStack chứa một Text và một HStack:


 VStack {
     Text("Hello, world!")
     HStack {
         Text("This")
         Text("is")
         Text("a")
         Text("HStack")
     }
 }



 //TODO:  Tạo một ZStack chứa một Text, một Image và một Rectangle:


 ZStack {
     Text("Hello, world!")
     Image(systemName: "star")
     Rectangle()
         .foregroundColor(.blue)
 }



 //TODO:  Tạo một VStack chứa một Text và một ScrollView:


 VStack {
     Text("Hello, world!")
     ScrollView {
         Text("This is a ScrollView")
     }
 }



 //TODO:  Tạo một VStack chứa một Text và một ForEach:


 VStack {
     Text("Hello, world!")
     ForEach(0..<3) { index in
         Text("Item \\(index)")
     }
 }



 //TODO:  Tạo một HStack chứa một Text và một Spacer:


 HStack {
     Text("Hello, world!")
     Spacer()
 }



 //TODO:  Tạo một VStack chứa một Text và một HStack với một Spacer:


 VStack {
     Text("Hello, world!")
     HStack {
         Text("This")
         Spacer()
         Text("is")
         Spacer()
         Text("a")
         Spacer()
         Text("HStack")
     }
 }



 //TODO:  Tạo một VStack chứa một Text và một Toggle:


 VStack {
     Text("Hello, world!")
     Toggle("Toggle", isOn: .constant(true))
 }



 //TODO:  Tạo một VStack chứa một Text và một HStack với hai Toggle:


 VStack {
     Text("Hello, world!")
     HStack {
         Toggle("Toggle 1", isOn: .constant(true))
         Toggle("Toggle 2", isOn: .constant(false))
     }
 }



 //TODO:  Tạo một VStack chứa một Text và một DatePicker:


 VStack {
     Text("Hello, world!")
     DatePicker("Date", selection: .constant(Date()))
 }



 //TODO:  Tạo một VStack chứa một Text và một Stepper:


 VStack {
     Text("Hello, world!")
     Stepper("Stepper", value: .constant(1))
 }



 //TODO:  Tạo một VStack chứa một Text và một Slider:


 VStack {
     Text("Hello, world!")
     Slider(value: .constant(0.5))
 }



 //TODO:  Tạo một VStack chứa một Text và một Button:


 VStack {
     Text("Hello, world!")
     Button("Button", action: {})
 }



 //TODO:  Tạo một VStack chứa một Text và một HStack với một Button:


 VStack {
     Text("Hello, world!")
     HStack {
         Spacer()
         Button("Button", action: {})
         Spacer()
     }
 }



 Bạn có thể xuất một trang Notion ra file máy tính dưới dạng HTML, Markdown hoặc CSV bằng cách nhấn vào biểu tượng ba chấm (...) ở góc phải trên cùng của trang và chọn "Export" trong menu. Sau đó, chọn định dạng bạn muốn xuất ra và nhấn "Export". Sau khi quá trình xuất kết thúc, một file sẽ được tải xuống trên máy tính của bạn.
 */
