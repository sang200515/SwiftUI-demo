//
//  State.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation
/*
 # Cách hoạt động của @State trong Swift UI

 Trong SwiftUI, @State là một thuộc tính có thể thay đổi giá trị trong một view. Khi giá trị của @State thay đổi, SwiftUI sẽ tự động cập nhật lại toàn bộ view chứa thuộc tính đó.

 Cách hoạt động của @State như sau:

 //TODO:  Khi giá trị của @State thay đổi, SwiftUI sẽ tự động gọi lại hàm body của view chứa thuộc tính đó.
 2. SwiftUI so sánh giá trị mới với giá trị cũ của thuộc tính. Nếu giá trị mới khác giá trị cũ, SwiftUI sẽ tự động cập nhật lại view.
 3. SwiftUI cập nhật lại view bằng cách tạo ra một phiên bản mới của view và so sánh phiên bản mới với phiên bản cũ. Sau đó, SwiftUI chỉ cập nhật những phần khác nhau giữa hai phiên bản này.

 Khi sử dụng @State, chúng ta nên lưu ý một số điểm sau:

 - @State chỉ nên được sử dụng cho các thuộc tính nhỏ và tạm thời, không nên sử dụng cho các thuộc tính lớn hoặc có tính chất toàn cục.
 - Không nên thay đổi giá trị của @State trong hàm init hoặc các hàm khởi tạo khác của view.
 - Nếu muốn thay đổi giá trị của @State bên ngoài view, chúng ta nên sử dụng các biến hoặc hàm binding để kết nối giá trị với view.

 Đó là cách hoạt động của @State trong SwiftUI. Chúng ta có thể sử dụng @State để tạo ra các view linh hoạt và dễ dàng cập nhật giá trị của chúng.

 Dưới đây là 20 ví dụ về cách áp dụng @State trong SwiftUI:

 //TODO:  Hiển thị một giá trị đơn giản:

 
 @State var text = "Hello, World!"
 Text(text)

 

 //TODO:  Hiển thị một số nguyên và cho phép người dùng tăng/giảm giá trị:

 
 @State var number = 0
 Stepper(value: $number) {
     Text("\\(number)")
 }

 

 //TODO:  Hiển thị một checkbox và cho phép người dùng chọn:

 
 @State var isChecked = false
 Toggle(isOn: $isChecked) {
     Text("Checkbox")
 }

 

 //TODO:  Hiển thị một nút và cho phép người dùng nhấn vào:

 
 @State var buttonTitle = "Click me"
 Button(action: {
     // Do something
 }) {
     Text(buttonTitle)
 }

 

 //TODO:  Hiển thị một slider và cho phép người dùng thay đổi giá trị:

 
 @State var sliderValue = 0.5
 Slider(value: $sliderValue)

 

 //TODO:  Hiển thị một mảng các chuỗi và cho phép người dùng thêm/xóa phần tử:

 
 @State var items = ["Item 1", "Item 2", "Item 3"]
 List {
     ForEach(items, id: \\.self) { item in
         Text(item)
     }
     .onDelete { indexSet in
         items.remove(atOffsets: indexSet)
     }
     .onMove { indices, newOffset in
         items.move(fromOffsets: indices, toOffset: newOffset)
     }
 }

 

 //TODO:  Hiển thị một mảng các đối tượng và cho phép người dùng chỉnh sửa thuộc tính của chúng:

 
 class Person: Identifiable {
     let id = UUID()
     var name: String
     init(name: String) {
         self.name = name
     }
 }

 @State var people = [
     Person(name: "Alice"),
     Person(name: "Bob"),
     Person(name: "Charlie")
 ]

 List {
     ForEach(people) { person in
         TextField("Name", text: $person.name)
     }
 }

 

 //TODO:  Hiển thị một menu và cho phép người dùng chọn một phần tử:

 
 enum Fruit: String, CaseIterable {
     case apple = "Apple"
     case banana = "Banana"
     case cherry = "Cherry"
 }

 @State var selectedFruit: Fruit?

 Menu {
     ForEach(Fruit.allCases, id: \\.self) { fruit in
         Button(fruit.rawValue) {
             selectedFruit = fruit
         }
     }
 }
 .label(selectedFruit.map { Text($0.rawValue) } ?? Text("Select a fruit"))

 

 //TODO:  Hiển thị một tabview và cho phép người dùng chuyển đổi giữa các tab:

 
 enum Tab: Hashable {
     case first, second, third
 }

 struct ContentView: View {
     @State var selectedTab: Tab = .first
     var body: some View {
         TabView(selection: $selectedTab) {
             Text("First").tabItem { Text("First") }.tag(Tab.first)
             Text("Second").tabItem { Text("Second") }.tag(Tab.second)
             Text("Third").tabItem { Text("Third") }.tag(Tab.third)
         }
     }
 }

 

 //TODO:  Hiển thị một trường nhập liệu và cho phép người dùng nhập dữ liệu:

 
 @State var text = ""
 TextField("Enter text", text: $text)

 

 //TODO:  Hiển thị một trường nhập liệu và cho phép người dùng nhập mật khẩu:

 
 @State var password = ""
 SecureField("Enter password", text: $password)

 

 //TODO:  Hiển thị một trường nhập liệu và cho phép người dùng chỉnh sửa giá trị:

 
 @State var editableText = "Editable text"
 TextEditor(text: $editableText)

 

 //TODO:  Hiển thị một trường nhập liệu và cho phép người dùng nhập số điện thoại:

 
 @State var phoneNumber = ""
 TextField("Enter phone number", text: $phoneNumber)
     .keyboardType(.phonePad)

 

 //TODO:  Hiển thị một trường nhập liệu và cho phép người dùng nhập địa chỉ email:

 
 @State var email = ""
 TextField("Enter email address", text: $email)
     .keyboardType(.emailAddress)

 

 //TODO:  Hiển thị một trường nhập liệu và cho phép người dùng nhập URL:

 
 @State var url = ""
 TextField("Enter URL", text: $url)
     .keyboardType(.URL)

 

 //TODO:  Hiển thị một trường nhập liệu và cho phép người dùng nhập ngày tháng:

 
 @State var date = Date()
 DatePicker("Select date", selection: $date)
     .datePickerStyle(.graphical)

 

 //TODO:  Hiển thị một trường nhập liệu và cho phép người dùng nhập thời gian:

 
 @State var time = Date()
 DatePicker("Select time", selection: $time, displayedComponents: [.hourAndMinute])
     .datePickerStyle(.graphical)

 

 //TODO:  Hiển thị một trường nhập liệu và cho phép người dùng chọn một màu:

 
 @State var color = Color.red
 ColorPicker("Select color", selection: $color)

 

 //TODO:  Hiển thị một trường nhập liệu và cho phép người dùng chọn một hình ảnh từ thư viện:

 
 @State var image: UIImage?
 Image(uiImage: image ?? UIImage(systemName: "photo")!)
     .resizable()
     .scaledToFit()
     .onTapGesture {
         let picker = UIImagePickerController()
         picker.sourceType = .photoLibrary
         picker.allowsEditing = true
         picker.delegate = context.coordinator
         parent.present(picker, animated: true)
     }

 

 //TODO:  Hiển thị một trường nhập liệu và cho phép người dùng chọn một vị trí trên bản đồ:
 */
