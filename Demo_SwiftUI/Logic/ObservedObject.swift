//
//  ObservedObject.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation
/*
 # 20 ví dụ về cách hoạt động của ObservedObject trong SwiftUI

 SwiftUI cung cấp một cách đơn giản để theo dõi và cập nhật các giá trị trong view của bạn bằng cách sử dụng @ObservedObject. Đây là 20 ví dụ về cách sử dụng @ObservedObject trong SwiftUI.

 Trong SwiftUI, @ObservedObject là một thuộc tính giúp bạn theo dõi và cập nhật các giá trị trong view của bạn dựa trên một đối tượng ObservableObject. Để sử dụng @ObservedObject, bạn cần khai báo một class hoặc struct và cho nó thực hiện protocol ObservableObject. Sau đó, bạn có thể sử dụng @ObservedObject để truy cập các thuộc tính của đối tượng này trong view của bạn. Bất cứ khi nào giá trị của thuộc tính được thay đổi, view của bạn sẽ được cập nhật lại tự động. Điều này giúp cho việc quản lý trạng thái của các view trong SwiftUI trở nên đơn giản và thuận tiện hơn.

 //TODO:  Khai báo một class hoặc struct và cho nó thực hiện protocol ObservableObject:

 
 class ViewModel: ObservableObject {
     @Published var name: String = "John"
 }

 

 //TODO:  Sử dụng thuộc tính của ViewModel trong view của bạn bằng cách sử dụng @ObservedObject:

 
 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         Text(viewModel.name)
     }
 }

 

 //TODO:  Cập nhật giá trị của ViewModel bằng cách thay đổi các thuộc tính của nó:

 
 viewModel.name = "Jane"

 

 //TODO:  Sử dụng @ObservedObject với ForEach để hiển thị danh sách các đối tượng:

 
 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         List(viewModel.items) { item in
             Text(item.name)
         }
     }
 }

 

 //TODO:  Thực hiện xử lý ngôn ngữ tự nhiên (NLP) bất đồng bộ trong ViewModel:

 
 class ViewModel: ObservableObject {
     @Published var name: String = "John"

     func performNLP() {
         // Bất đồng bộ xử lý NLP ở đây
     }
 }

 

 //TODO:  Gọi hàm performNLP() trong view của bạn bằng cách sử dụng @ObservedObject:

 
 Button(action: {
     viewModel.performNLP()
 }) {
     Text("Perform NLP")
 }

 

 //TODO:  Sử dụng @ObservedObject với Combine để đồng bộ hóa dữ liệu từ nhiều nguồn:

 
 class ViewModel: ObservableObject {
     @Published var name: String = "John"
     @Published var age: Int = 30

     var cancellables = Set<AnyCancellable>()

     init() {
         Publishers.CombineLatest($name, $age)
             .sink { name, age in
                 print("Name: \\(name), Age: \\(age)")
             }
             .store(in: &cancellables)
     }
 }

 

 //TODO:  Sử dụng @ObservedObject để hiển thị một hộp thoại cảnh báo:

 
 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()
     @State private var showAlert = false

     var body: some View {
         Button(action: {
             self.showAlert = true
         }) {
             Text("Show Alert")
         }
         .alert(isPresented: $showAlert) {
             Alert(title: Text(viewModel.alertTitle), message: Text(viewModel.alertMessage))
         }
     }
 }

 

 //TODO:  Sử dụng @ObservedObject để cập nhật thông tin đăng nhập của người dùng:

 
 struct LoginView: View {
     @ObservedObject var viewModel = LoginViewModel()

     var body: some View {
         VStack {
             TextField("Username", text: $viewModel.username)
             SecureField("Password", text: $viewModel.password)
             Button(action: {
                 viewModel.login()
             }) {
                 Text("Login")
             }
         }
     }
 }

 

 //TODO:  Sử dụng @ObservedObject để hiển thị một thông báo lỗi:

 
 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         VStack {
             TextField("Name", text: $viewModel.name)
                 .textFieldStyle(RoundedBorderTextFieldStyle())
             Button(action: {
                 viewModel.save()
             }) {
                 Text("Save")
             }
         }
         .alert(isPresented: $viewModel.showError) {
             Alert(title: Text("Error"), message: Text(viewModel.errorMessage))
         }
     }
 }

 

 //TODO:  Sử dụng @ObservedObject để hiển thị một thông báo thành công:

 
 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         VStack {
             TextField("Name", text: $viewModel.name)
                 .textFieldStyle(RoundedBorderTextFieldStyle())
             Button(action: {
                 viewModel.save()
             }) {
                 Text("Save")
             }
         }
         .alert(isPresented: $viewModel.showSuccess) {
             Alert(title: Text("Success"), message: Text("Data saved successfully."))
         }
     }
 }

 

 //TODO:  Sử dụng @ObservedObject để hiển thị một thời gian đếm ngược:

 
 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         VStack {
             Text("\\(viewModel.timeRemaining)")
                 .font(.largeTitle)
                 .fontWeight(.bold)
         }
     }
 }

 

 //TODO:  Sử dụng @ObservedObject để làm nổi bật một phần tử trong danh sách:

 
 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         List(viewModel.items) { item in
             Text(item.name)
                 .bold()
                 .foregroundColor(item.isHighlighted ? .red : .black)
         }
     }
 }

 

 //TODO:  Sử dụng @ObservedObject để cập nhật một biểu đồ:

 
 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         LineChartView(data: viewModel.chartData)
     }
 }

 

 //TODO:  Sử dụng @ObservedObject để cập nhật một bản đồ:

 
 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         MapView(location: viewModel.location)
     }
 }

 

 //TODO:  Sử dụng @ObservedObject để cập nhật một ảnh nền:

 
 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         Image(uiImage: viewModel.backgroundImage)
             .resizable()
             .scaledToFit()
     }
 }

 

 //TODO:  Sử dụng @ObservedObject để cập nhật một video nền:

 
 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         VideoPlayer(player: viewModel.videoPlayer)
     }
 }

 

 //TODO:  Sử dụng @ObservedObject để cập nhật một thuộc tính của view:

 
 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()
     @State private var isShowing = false

     var body: some View {
         Button(action: {
             self.isShowing.toggle()
         }) {
             Text("Button")
         }
         .opacity(viewModel.isEnabled ? //TODO: 0 : 0.5)
         .sheet(isPresented: $isShowing) {
             // Show some other view
         }
     }
 }

 

 //TODO:  Sử dụng @ObservedObject để cập nhật một thuộc tính của view khác:

 
 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()
     @Environment(\\.colorScheme) var colorScheme

     var body: some View {
         Text("Hello, World!")
             .foregroundColor(colorScheme == .dark ? .white : .black)
     }
 }

 

 //TODO:  Sử dụng @ObservedObject để cập nhật một thuộc tính của một view con:
 */
