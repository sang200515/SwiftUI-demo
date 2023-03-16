//
//  TextField.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation


/*
 Để tạo các ô nhập liệu trên màn hình Swift UI, chúng ta có thể sử dụng component `TextField`. Đây là một component cho phép người dùng nhập liệu vào một vùng text trên màn hình. Sau đây là đoạn code demo để tạo các ô nhập liệu trên màn hình Swift UI:

 
 import SwiftUI

 struct ContentView: View {
     @State private var username = ""
     @State private var password = ""

     var body: some View {
         VStack {
             TextField("Username", text: $username)
                 .textFieldStyle(RoundedBorderTextFieldStyle())
                 .padding()
             SecureField("Password", text: $password)
                 .textFieldStyle(RoundedBorderTextFieldStyle())
                 .padding()
             Button(action: {
                 print("Username: \\(self.username)")
                 print("Password: \\(self.password)")
             }) {
                 Text("Sign In")
             }
         }
     }
 }

 

 Trong đoạn code trên, chúng ta sử dụng component `TextField` để tạo các ô nhập liệu cho `Username` và `Password`. Để lấy giá trị của hai ô nhập liệu này, chúng ta sử dụng hai biến `@State` để theo dõi giá trị của chúng. Khi người dùng nhập liệu vào các ô này, giá trị của biến tương ứng sẽ được cập nhật.

 Để truyền giá trị của các biến `@State` vào cho các `TextField`, chúng ta sử dụng thuộc tính `text` của `TextField`. Thuộc tính này cho phép chúng ta truyền giá trị vào trong `TextField`, cũng như lấy giá trị của `TextField` sau khi người dùng nhập liệu.

 Trong đoạn code trên, chúng ta cũng sử dụng các thuộc tính như `textFieldStyle` và `padding` để tùy chỉnh giao diện của các `TextField`.

 Cuối cùng, chúng ta sử dụng component `Button` để tạo một nút đăng nhập. Khi người dùng ấn vào nút này, giá trị của hai ô nhập liệu sẽ được in ra trên console.

 Đây là một đoạn code đơn giản để tạo các ô nhập liệu trên màn hình Swift UI với `TextField`. Bạn có thể tùy chỉnh giao diện và chức năng của các ô nhập liệu này để phù hợp với ứng dụng của mình.

 Đây là một số ví dụ về cách sử dụng `TextField` kết hợp với các component khác trong SwiftUI:

 //TODO:  Sử dụng `TextField` kết hợp với `List` để tạo một danh sách người dùng có thể chỉnh sửa:

 
 struct UserListView: View {
     @State var users: [String] = []

     var body: some View {
         List {
             ForEach(users, id: \\.self) { user in
                 TextField("Username", text: Binding(
                     get: { user },
                     set: { newValue in
                         if let index = users.firstIndex(of: user) {
                             users[index] = newValue
                         }
                     }
                 ))
             }
             Button(action: {
                 users.append("")
             }) {
                 Text("Add User")
             }
         }
     }
 }

 

 //TODO:  Sử dụng `TextField` kết hợp với `Picker` để cho phép người dùng chọn một giá trị từ một danh sách:

 
 struct FruitPickerView: View {
     let fruits = ["Apple", "Banana", "Orange", "Pear"]
     @State var selectedFruit = ""

     var body: some View {
         VStack {
             Picker("Select a fruit", selection: $selectedFruit) {
                 ForEach(fruits, id: \\.self) { fruit in
                     Text(fruit)
                 }
             }
             .pickerStyle(SegmentedPickerStyle())
             TextField("Quantity", text: .constant(""))
             Button(action: {
                 print("Selected fruit: \\\\(selectedFruit)")
             }) {
                 Text("Order")
             }
         }
         .padding()
     }
 }

 

 //TODO:  Sử dụng `TextField` kết hợp với `Stepper` để cho phép người dùng tăng/giảm giá trị một cách dễ dàng:

 
 struct QuantityStepperView: View {
     @State var quantity = 0
     @State var price = 0.0

     var body: some View {
         VStack {
             Stepper("Quantity: \\\\(quantity)", value: $quantity)
             TextField("Price", value: $price, formatter: NumberFormatter())
             Text("Total: \\\\(price * Double(quantity))")
         }
         .padding()
     }
 }

 

 //TODO:  Sử dụng `TextField` kết hợp với `ScrollView` để tạo một trang nhập liệu dài:

 
 struct LongFormView: View {
     @State var name = ""
     @State var email = ""
     @State var phone = ""
     @State var message = ""

     var body: some View {
         ScrollView {
             VStack {
                 TextField("Name", text: $name)
                 TextField("Email", text: $email)
                 TextField("Phone", text: $phone)
                 TextField("Message", text: $message)
             }
         }
     }
 }

 

 //TODO:  Sử dụng `TextField` kết hợp với `Toggle` để cho phép người dùng bật/tắt một tính năng:

 
 struct FeatureToggleView: View {
     @State var featureEnabled = false
     @State var featureName = ""
     @State var featureDescription = ""

     var body: some View {
         VStack {
             Toggle("Enable feature", isOn: $featureEnabled)
             if featureEnabled {
                 TextField("Feature name", text: $featureName)
                 TextField("Feature description", text: $featureDescription)
             }
         }
         .padding()
     }
 }

 

 Đây chỉ là một số ví dụ đơn giản về cách sử dụng `TextField` kết hợp với các component khác trong SwiftUI. Bạn có thể tùy chỉnh và kết hợp các component này để tạo ra các ứng dụng phức tạp hơn.

 //TODO:  Sử dụng `TextField` kết hợp với `DatePicker` để cho phép người dùng chọn một ngày:

 
 struct BirthdayPickerView: View {
     @State var birthday = Date()

     var body: some View {
         VStack {
             DatePicker("Birthday", selection: $birthday, displayedComponents: .date)
             TextField("Age", text: .constant(""))
             Button(action: {
                 print("Selected birthday: \\\\(birthday)")
             }) {
                 Text("Save")
             }
         }
         .padding()
     }
 }

 

 //TODO:  Sử dụng `TextField` kết hợp với `TextEditor` để cho phép người dùng nhập một đoạn văn bản dài:

 
 struct LongTextFieldView: View {
     @State var text = ""

     var body: some View {
         VStack {
             TextEditor(text: $text)
                 .frame(height: 200)
             Button(action: {
                 print("Entered text: \\\\(text)")
             }) {
                 Text("Save")
             }
         }
         .padding()
     }
 }

 

 //TODO:  Sử dụng `TextField` kết hợp với `Slider` để cho phép người dùng chọn một giá trị trong một khoảng:

 
 struct RatingSliderView: View {
     @State var rating = 0.0

     var body: some View {
         VStack {
             Slider(value: $rating, in: 0...5, step: 0.5)
             TextField("Rating", value: $rating, formatter: NumberFormatter())
             Button(action: {
                 print("Selected rating: \\\\(rating)")
             }) {
                 Text("Save")
             }
         }
         .padding()
     }
 }

 

 //TODO:  Sử dụng `TextField` kết hợp với `Map` để cho phép người dùng chọn một địa điểm trên bản đồ:

 
 struct LocationMapView: View {
     @State var latitude = 0.0
     @State var longitude = 0.0

     var body: some View {
         VStack {
             MapView(centerCoordinate: CLLocationCoordinate2D(latitude: latitude, longitude: longitude))
                 .frame(height: 200)
             TextField("Latitude", value: $latitude, formatter: NumberFormatter())
             TextField("Longitude", value: $longitude, formatter: NumberFormatter())
             Button(action: {
                 print("Selected location: \\\\(latitude), \\\\(longitude)")
             }) {
                 Text("Save")
             }
         }
         .padding()
     }
 }

 

 //TODO:  Sử dụng `TextField` kết hợp với `ColorPicker` để cho phép người dùng chọn một màu sắc:

 
 struct ColorPickerView: View {
     @State var color = Color.red

     var body: some View {
         VStack {
             ColorPicker("Color", selection: $color)
             TextField("Hex code", text: .constant(""))
             Button(action: {
                 print("Selected color: \\\\(color)")
             }) {
                 Text("Save")
             }
         }
         .padding()
     }
 }

 

 Đây là một số ví dụ khác về cách sử dụng `TextField` kết hợp với các component khác trong SwiftUI. Bạn có thể tham khảo và tùy chỉnh chúng để phù hợp với nhu cầu của mình.

 Dưới đây là 50 ví dụ về thiết kế giao diện chi tiết cho `TextField` trong SwiftUI:

 //TODO:  `TextField` đơn giản với màu nền và viền:

 
 TextField("Enter text", text: $text)
     .padding()
     .background(Color.gray.opacity(0.2))
     .cornerRadius(8)
     .padding(.horizontal)

 

 //TODO:  `TextField` với gợi ý và biểu tượng:

 
 HStack {
     Image(systemName: "magnifyingglass")
         .foregroundColor(.gray)
     TextField("Search", text: $text)
 }
 .padding()
 .background(Color.gray.opacity(0.2))
 .cornerRadius(8)
 .padding(.horizontal)

 

 //TODO:  `TextField` với biểu tượng và nút:

 
 HStack {
     Image(systemName: "person")
         .foregroundColor(.gray)
     TextField("Username", text: $username)
 }
 .padding()
 .background(Color.gray.opacity(0.2))
 .cornerRadius(8)
 .padding(.horizontal)
 .overlay(
     Button(action: {
         username = ""
     }) {
         Image(systemName: "xmark.circle.fill")
             .foregroundColor(.gray)
     }
     .padding(.trailing, 8)
     .opacity(username.isEmpty ? 0 : 1)
 )

 

 //TODO:  `TextField` với màu nền và viền tùy chỉnh:

 
 TextField("Enter text", text: $text)
     .padding()
     .background(
         RoundedRectangle(cornerRadius: 10)
             .stroke(Color.blue, lineWidth: 2)
             .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
     )
     .padding(.horizontal)

 

 //TODO:  `TextField` với màu nền gradient:

 
 TextField("Enter text", text: $text)
     .padding()
     .background(
         LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .leading, endPoint: .trailing)
             .opacity(0.2)
             .cornerRadius(8)
     )
     .padding(.horizontal)

 

 //TODO:  `TextField` với màu nền gradient và viền:

 
 TextField("Enter text", text: $text)
     .padding()
     .background(
         RoundedRectangle(cornerRadius: 10)
             .stroke(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .leading, endPoint: .trailing), lineWidth: 2)
             .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
     )
     .padding(.horizontal)

 

 //TODO:  `TextField` với màu nền và viền cùng màu:

 
 TextField("Enter text", text: $text)
     .padding()
     .background(Color.blue.opacity(0.2))
     .cornerRadius(8)
     .overlay(
         RoundedRectangle(cornerRadius: 8)
             .stroke(Color.blue, lineWidth: 2)
     )
     .padding(.horizontal)

 

 //TODO:  `TextField` với biểu tượng và màu nền gradient:

 
 HStack {
     Image(systemName: "person")
         .foregroundColor(.gray)
     TextField("Username", text: $username)
 }
 .padding()
 .background(
     RoundedRectangle(cornerRadius: 10)
         .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .leading, endPoint: .trailing))
 )
 .cornerRadius(8)
 .padding(.horizontal)

 

 //TODO:  `TextField` với biểu tượng và màu nền gradient và viền:

 
 HStack {
     Image(systemName: "person")
         .foregroundColor(.gray)
     TextField("Username", text: $username)
 }
 .padding()
 .background(
     RoundedRectangle(cornerRadius: 10)
         .stroke(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .leading, endPoint: .trailing), lineWidth: 2)
         .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
 )
 .cornerRadius(8)
 .padding(.horizontal)

 

 //TODO:  `TextField` với màu nền và viền tùy chỉnh và biểu tượng:

 
 HStack {
     Image(systemName: "person")
         .foregroundColor(.gray)
     TextField("Username", text: $username)
 }
 .padding()
 .background(
     RoundedRectangle(cornerRadius: 10)
         .stroke(Color.blue, lineWidth: 2)
         .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
 )
 .padding(.horizontal)

 

 //TODO:  `TextField` với màu nền gradient và viền tùy chỉnh và biểu tượng:

 
 HStack {
     Image(systemName: "person")
         .foregroundColor(.gray)
     TextField("Username", text: $username)
 }
 .padding()
 .background(
     RoundedRectangle(cornerRadius: 10)
         .stroke(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .leading, endPoint: .trailing), lineWidth: 2)
         .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
 )
 .padding(.horizontal)

 

 //TODO:  `TextField` với màu nền gradient và viền tùy chỉnh và gợi ý:

 
 HStack {
     Image(systemName: "magnifyingglass")
         .foregroundColor(.gray)
     TextField("Search", text: $text)
 }
 .padding()
 .background(
     RoundedRectangle(cornerRadius: 10)
         .stroke(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .leading, endPoint: .trailing), lineWidth: 2)
         .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
 )
 .padding(.horizontal)
 .foregroundColor(.gray)
 .overlay(
     HStack {
         Image(systemName: "magnifyingglass")
         Spacer()
     }
     .padding(.leading, 8)
 )

 

 //TODO:  `TextField` với màu nền gradient và viền tùy chỉnh và nút:

 
 HStack {
     Image(systemName: "lock")
         .foregroundColor(.gray)
     SecureField("Password", text: $password)
 }
 .padding()
 .background(
     RoundedRectangle(cornerRadius: 10)
         .stroke(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .leading, endPoint: .trailing), lineWidth: 2)
         .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
 )
 .padding(.horizontal)
 .overlay(
     Button(action: {
         password = ""
     }) {
         Image(systemName: "xmark.circle.fill")
             .foregroundColor(.gray)
     }
     .padding(.trailing, 8)
     .opacity(password.isEmpty ? 0 : 1)
 )

 

 //TODO:  `TextField` với màu nền gradient và viền tùy chỉnh và biểu tượng và nút:

 
 HStack {
     Image(systemName: "lock")
         .foregroundColor(.gray)
     SecureField("Password", text: $password)
 }
 .padding()
 .background(
     RoundedRectangle(cornerRadius: 10)
         .stroke(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .leading, endPoint: .trailing), lineWidth: 2)
         .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
 )
 .padding(.horizontal)
 .overlay(
     HStack {
         Spacer()
         Button(action: {
             password = ""
         }) {
             Image(systemName: "xmark.circle.fill")
                 .foregroundColor(.gray)
         }
         .opacity(password.isEmpty ? 0 : 1)
     }
     .padding(.trailing, 8)
 )

 

 //TODO:  `TextField` với màu nền gradient và viền tùy chỉnh và biểu tượng và nút và gợi ý:

 
 HStack {
     Image(systemName: "magnifyingglass")
         .foregroundColor(.gray)
     TextField("Search", text: $text)
 }
 .padding()
 .background(
     RoundedRectangle(cornerRadius: 10)
         .stroke(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .leading, endPoint: .trailing), lineWidth: 2)
         .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
 )
 .padding(.horizontal)
 .foregroundColor(.gray)
 .overlay(
     HStack {
         Spacer()
         Button(action: {
             text = ""
         }) {
             Image(systemName: "xmark.circle.fill")
                 .foregroundColor(.gray)
         }
         .opacity(text.isEmpty ? 0 : 1)
     }
     .padding(.trailing, 8)
 )
 .overlay(
     HStack {
         Image(systemName: "magnifyingglass")
         Spacer()
     }
     .padding(.leading, 8)
 )

 

 //TODO:  `TextField` với màu nền gradient và viền tùy chỉnh và biểu tượng và nút và gợi ý và phóng to khi được chọn:

 
 @State private var isEditing = false

 HStack {
     Image(systemName: "magnifyingglass")
         .foregroundColor(.gray)
     TextField("Search", text: $text, onEditingChanged: { editing in
         withAnimation {
             isEditing = editing
         }
     })
 }
 .padding()
 .background(
     RoundedRectangle(cornerRadius: 10)
         .stroke(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .leading, endPoint: .trailing), lineWidth: 2)
         .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
 )
 .padding(.horizontal)
 .foregroundColor(.gray)
 .overlay(
     HStack {
         Spacer()
         Button(action: {
             text = ""
         }) {
             Image(systemName: "xmark.circle.fill")
                 .foregroundColor(.gray)
         }
         .opacity(text.isEmpty ? 0 : 1)
     }
     .padding(.trailing, 8)
     .scaleEffect(isEditing ? //TODO: 0 : 0.001)
     .animation(.spring())
 )
 .overlay(
     HStack {
         Image(systemName: "magnifyingglass")
         Spacer()
     }
     .padding(.leading, 8)
     .scaleEffect(isEditing ? 0.001 : //TODO: 0)
     .animation(.spring())
 )

 

 //TODO:  `TextField` với màu nền gradient và viền tùy chỉnh và biểu tượng và nút và gợi ý và phóng to khi được chọn và màu nền tùy chỉnh khi được chọn:

 
 @State private var isEditing = false

 HStack {
     Image(systemName: "magnifyingglass")
         .foregroundColor(.gray)
     TextField("Search", text: $text, onEditingChanged: { editing in
         withAnimation {
             isEditing = editing
         }
     })
 }
 .padding()
 .background(
     RoundedRectangle(cornerRadius: 10)
         .stroke(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .leading, endPoint: .trailing), lineWidth: 2)
         .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
 )
 .padding(.horizontal)
 .foregroundColor(.gray)
 .overlay(
     HStack {
         Spacer()
         Button(action: {
             text = ""
         }) {
             Image(systemName: "xmark.circle.fill")
                 .foregroundColor(.gray)
         }
         .opacity(text.isEmpty ? 0 : 1)
     }
     .padding(.trailing, 8)
     .scaleEffect(isEditing ? //TODO: 0 : 0.001)
     .animation(.spring())
 )
 .overlay(
     HStack {
         Image(systemName: "magnifyingglass")
         Spacer()
     }
     .padding(.leading, 8)
     .scaleEffect(isEditing ? 0.001 : //TODO: 0)
     .animation(.spring())
 )
 .background(
     RoundedRectangle(cornerRadius: 10)
         .fill(Color.blue.opacity(isEditing ? 0.1 : 0))
 )

 

 //TODO:  `TextField` với màu nền gradient và viền tùy chỉnh và biểu tượng và nút và gợi ý và phóng to khi được chọn và màu nền tùy chỉnh khi được chọn và hiệu ứng phát sáng:

 
 @State private var isEditing = false

 HStack {
     Image(systemName: "magnifyingglass")
         .foregroundColor(.gray)
     TextField("Search", text: $text, onEditingChanged: { editing in
         withAnimation {
             isEditing = editing
         }
     })
 }
 .padding()
 .background(
     RoundedRectangle(cornerRadius: 10)
         .stroke(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .leading, endPoint: .trailing), lineWidth: 2)
         .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
 )
 .padding(.horizontal)
 .foregroundColor(.gray)
 .overlay(
     HStack {
         Spacer()
         Button(action: {
             text = ""
         }) {
             Image(systemName: "xmark.circle.fill")
                 .foregroundColor(.gray)
         }
         .opacity(text.isEmpty ? 0 : 1)
     }
     .padding(.trailing, 8)
     .scaleEffect(isEditing ? //TODO: 0 : 0.001)
     .animation(.spring())
 )
 .overlay(
     HStack {
         Image(systemName: "magnifyingglass")
         Spacer()
     }
     .padding(.leading, 8)
     .scaleEffect(isEditing ? 0.001 : //TODO: 0)
     .animation(.spring())
 )
 .background(
     RoundedRectangle(cornerRadius: 10)
         .fill(Color.blue.opacity(isEditing ? 0.1 :
 
 */
