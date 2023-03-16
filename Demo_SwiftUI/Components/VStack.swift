//
//  VStack.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation


/*
 # Hướng dẫn sử dụng Vstack trong SwiftUI

 SwiftUI là một framework để xây dựng giao diện người dùng cho các ứng dụng iOS, macOS, watchOS và tvOS. Với SwiftUI, chúng ta có thể sử dụng nhiều loại layout để xây dựng giao diện. Trong đó, Vstack là một trong những layout được sử dụng phổ biến nhất.

 ## Vstack là gì?

 Vstack là một loại layout trong SwiftUI, được sử dụng để sắp xếp các view theo chiều dọc. Vstack sử dụng đối tượng View như một tham số đầu vào và thêm chúng vào layout theo thứ tự từ trên xuống dưới.

 ## Cú pháp

 Cú pháp sử dụng Vstack trong SwiftUI như sau:

 
 VStack(alignment: .center, spacing: 10) {
     // TODO: Add views here
 }

 

 Ở đây, `alignment` là thuộc tính để xác định cách thức căn chỉnh các view trong layout. `spacing` là khoảng cách giữa các view trong layout.

 ## Ví dụ

 Dưới đây là một ví dụ về cách sử dụng Vstack để sắp xếp các view trong SwiftUI:

 
 struct ContentView: View {
     var body: some View {
         VStack(alignment: .leading, spacing: 10) {
             Text("Hello, world!")
                 .font(.largeTitle)
             Spacer()
             HStack {
                 Image(systemName: "star.fill")
                     .foregroundColor(.yellow)
                 Text("SwiftUI")
             }
         }
     }
 }

 

 Trong ví dụ này, chúng ta sử dụng Vstack để sắp xếp các view theo chiều dọc. Text "Hello, world!" được căn chỉnh bên trái, có font size lớn. Spacer được sử dụng để tạo ra khoảng cách giữa Text và Hstack. Trong Hstack, chúng ta sử dụng một hình ảnh và một Text.

 ## Kết luận

 Vstack là một trong những layout được sử dụng phổ biến nhất trong SwiftUI. Với Vstack, chúng ta có thể sắp xếp các view theo chiều dọc một cách dễ dàng và linh hoạt. Mong rằng bài viết này đã giúp bạn hiểu rõ hơn về cách sử dụng Vstack trong SwiftUI.

 Khi sử dụng Vstack trong SwiftUI, có một số lưu ý sau đây cần tránh:

 - Tránh sử dụng quá nhiều Vstack liên tiếp nhau, điều này có thể dẫn đến hiệu suất giảm và gây khó khăn trong việc bảo trì mã nguồn.
 - Tránh sử dụng Vstack để chứa quá nhiều view, điều này có thể dẫn đến khó khăn trong việc quản lý layout và hiệu suất giảm.
 - Tránh sử dụng Vstack để căn chỉnh các view theo chiều dọc khi chúng ta cần căn chỉnh chúng theo chiều ngang. Trong trường hợp này, nên sử dụng Hstack thay vì Vstack.
 - Tránh sử dụng Vstack với alignment mặc định (trung tâm). Trong một số trường hợp, alignment này có thể dẫn đến các view bị lệch vị trí và không đúng với mong đợi của chúng ta.

 Dưới đây là 20 ví dụ nâng cao về cách kết hợp giữa Vstack và các component khác trong SwiftUI:

 //TODO:  Sử dụng Vstack và Hstack để tạo một layout phức tạp hơn:

 
 VStack {
     HStack {
         Text("Hello,")
         Text("world!")
         Spacer()
     }
     HStack {
         Image(systemName: "star.fill")
         Text("SwiftUI")
     }
 }

 

 //TODO:  Sử dụng Vstack và Spacer để căn chỉnh các view một cách chính xác:

 
 VStack {
     Text("Hello, world!")
         .font(.largeTitle)
     Spacer()
     HStack {
         Image(systemName: "star.fill")
             .foregroundColor(.yellow)
         Text("SwiftUI")
     }
     Spacer()
 }

 

 //TODO:  Sử dụng Vstack và ForEach để hiển thị một danh sách các view:

 
 struct ContentView: View {
     let fruits = ["Apple", "Banana", "Orange"]
     var body: some View {
         VStack {
             ForEach(fruits, id: \\.self) { fruit in
                 Text(fruit)
             }
         }
     }
 }

 

 //TODO:  Sử dụng Vstack và Zstack để sắp xếp các view theo các lớp:

 
 VStack {
     ZStack {
         Rectangle()
             .fill(Color.red)
             .frame(width: 100, height: 100)
         Text("1")
             .foregroundColor(.white)
     }
     ZStack {
         Rectangle()
             .fill(Color.green)
             .frame(width: 100, height: 100)
         Text("2")
             .foregroundColor(.white)
     }
 }

 

 //TODO:  Sử dụng Vstack và Group để nhóm các view lại với nhau:

 
 VStack {
     Group {
         Text("Hello,")
         Text("world!")
     }
     Group {
         Image(systemName: "star.fill")
         Text("SwiftUI")
     }
 }

 

 //TODO:  Sử dụng Vstack và ScrollView để tạo một danh sách cuộn:

 
 struct ContentView: View {
     let colors: [Color] = [.red, .green, .blue]
     var body: some View {
         ScrollView {
             VStack {
                 ForEach(colors, id: \\.self) { color in
                     Rectangle()
                         .fill(color)
                         .frame(width: 100, height: 100)
                 }
             }
         }
     }
 }

 

 //TODO:  Sử dụng Vstack và Spacer để căn chỉnh các view theo chiều dọc:

 
 VStack {
     Text("Hello, world!")
     Spacer()
     Image(systemName: "star.fill")
 }

 

 //TODO:  Sử dụng Vstack để hiển thị một danh sách các view theo chiều dọc:

 
 VStack {
     Text("1")
     Text("2")
     Text("3")
 }

 

 //TODO:  Sử dụng Vstack và Hstack để tạo một layout phức tạp hơn:

 
 VStack {
     HStack {
         Text("Hello,")
         Text("world!")
         Spacer()
     }
     HStack {
         Image(systemName: "star.fill")
         Text("SwiftUI")
     }
     Spacer()
 }

 

 //TODO:  Sử dụng Vstack và Section để tạo một danh sách với các tiêu đề:

 
 struct ContentView: View {
     let fruits = ["Apple", "Banana", "Orange"]
     var body: some View {
         List {
             Section(header: Text("Fruits")) {
                 ForEach(fruits, id: \\.self) { fruit in
                     Text(fruit)
                 }
             }
         }
     }
 }

 

 //TODO:  Sử dụng Vstack và Text để hiển thị văn bản có độ dài khác nhau:

 
 VStack {
     Text("Short Text")
     Text("Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text ")
 }

 

 //TODO:  Sử dụng Vstack và Button để tạo các nút:

 
 VStack {
     Button(action: {
         // TODO: Action
     }) {
         Text("Button 1")
     }
     Button(action: {
         // TODO: Action
     }) {
         Text("Button 2")
     }
 }

 

 //TODO:  Sử dụng Vstack và TextField để tạo các trường nhập liệu:

 
 VStack {
     TextField("Username", text: $username)
     SecureField("Password", text: $password)
 }

 

 //TODO:  Sử dụng Vstack, Hstack và Spacer để căn chỉnh các view trong layout phức tạp:

 
 VStack {
     HStack {
         Text("Hello,")
         Text("world!")
         Spacer()
     }
     Spacer()
     HStack {
         Image(systemName: "star.fill")
         Text("SwiftUI")
         Spacer()
         Button(action: {
             // TODO: Action
         }) {
             Text("Button")
         }
     }
 }

 

 //TODO:  Sử dụng Vstack và NavigationLink để tạo các liên kết điều hướng:

 
 VStack {
     NavigationLink(destination: DetailView()) {
         Text("Link 1")
     }
     NavigationLink(destination: DetailView()) {
         Text("Link 2")
     }
 }

 

 //TODO:  Sử dụng Vstack và DatePicker để tạo các trường chọn ngày:

 
 VStack {
     DatePicker("Start Date", selection: $startDate)
     DatePicker("End Date", selection: $endDate)
 }

 

 //TODO:  Sử dụng Vstack và Stepper để tạo các trường chọn số lượng:

 
 VStack {
     Stepper("Quantity: \\(quantity)", value: $quantity)
 }

 

 //TODO:  Sử dụng Vstack và Toggle để tạo các trường chọn có/không:

 
 VStack {
     Toggle("Toggle", isOn: $toggleValue)
 }

 

 //TODO:  Sử dụng Vstack và Slider để tạo các trường chọn giá trị:

 
 VStack {
     Slider(value: $sliderValue, in: 0...10)
 }

 

 //TODO:  Sử dụng Vstack và Picker để tạo các trường chọn giá trị từ danh sách:
 */
