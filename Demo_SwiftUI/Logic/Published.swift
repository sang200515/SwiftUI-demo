//
//  Published.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation
/*
 # Cách hoạt động của Published trong Swift UI

 Published là một thuộc tính trong SwiftUI được sử dụng để theo dõi và phát hiện sự thay đổi của các giá trị trong các biến hoặc các thuộc tính nói chung. Khi giá trị của một thuộc tính được thay đổi, Published sẽ tự động gửi một tín hiệu đến SwiftUI để cập nhật lại giao diện người dùng.

 Để sử dụng Published, chúng ta cần import Combine framework. Sau đó, tại nơi cần sử dụng, chúng ta khai báo một thuộc tính có kiểu dữ liệu được bọc bởi @Published.

 Ví dụ:

 
 import SwiftUI
 import Combine

 class ViewModel: ObservableObject {
     @Published var name: String = ""
 }

 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         VStack {
             TextField("Enter your name", text: $viewModel.name)
                 .padding()

             Text("Hello, \\(viewModel.name)")
                 .padding()
         }
     }
 }

 

 Trong ví dụ trên, chúng ta tạo ra một ViewModel và một thuộc tính có kiểu dữ liệu String được bọc bởi @Published. Sau đó, chúng ta sử dụng thuộc tính này để hiển thị tên người dùng trên giao diện người dùng.

 Khi người dùng nhập tên vào TextField, giá trị của thuộc tính sẽ được thay đổi và Published sẽ tự động gửi một tín hiệu đến SwiftUI để cập nhật lại giao diện người dùng.

 Đó là cách hoạt động của Published trong SwiftUI. Nó giúp chúng ta dễ dàng quản lý các giá trị và cập nhật giao diện người dùng một cách tự động và hiệu quả.

 Đây là một số ví dụ về cách sử dụng @Published trong SwiftUI:

 //TODO:  Tạo một ViewModel với một @Published thuộc tính kiểu Bool để điều khiển hiển thị một view.

 
 class ViewModel: ObservableObject {
     @Published var isShowingView = false
 }

 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         if viewModel.isShowingView {
             Text("Hello World!")
         }

         Button("Show View") {
             viewModel.isShowingView = true
         }
     }
 }

 

 //TODO:  Tạo một ViewModel với một @Published thuộc tính kiểu Color để thay đổi màu nền của một view.

 
 class ViewModel: ObservableObject {
     @Published var backgroundColor = Color.white
 }

 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         Rectangle()
             .fill(viewModel.backgroundColor)
             .frame(width: 100, height: 100)

         Button("Change Color") {
             viewModel.backgroundColor = Color.red
         }
     }
 }

 

 //TODO:  Tạo một ViewModel với một @Published thuộc tính kiểu Int để thay đổi kích thước của một view.

 
 class ViewModel: ObservableObject {
     @Published var size = 50
 }

 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         Circle()
             .frame(width: CGFloat(viewModel.size), height: CGFloat(viewModel.size))

         Button("Increase Size") {
             viewModel.size += 10
         }
     }
 }

 

 //TODO:  Tạo một ViewModel với nhiều @Published thuộc tính để thay đổi nhiều thuộc tính của một view.

 
 class ViewModel: ObservableObject {
     @Published var backgroundColor = Color.white
     @Published var textColor = Color.black
     @Published var text = "Hello World!"
 }

 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         Text(viewModel.text)
             .foregroundColor(viewModel.textColor)
             .padding()
             .background(viewModel.backgroundColor)

         Button("Change Colors and Text") {
             viewModel.backgroundColor = Color.red
             viewModel.textColor = Color.white
             viewModel.text = "Goodbye World!"
         }
     }
 }

 

 //TODO:  Tạo một ViewModel với một @Published thuộc tính kiểu Binding để liên kết với một biến khác.

 
 class ViewModel: ObservableObject {
     @Published var text = ""

     func bindTo(_ binding: Binding<String>) {
         $text
             .sink { value in
                 binding.wrappedValue = value
             }
             .store(in: &cancellables)
     }
 }

 struct ContentView: View {
     @State var text = ""

     var body: some View {
         VStack {
             TextField("Enter Text", text: $text)

             Text("You entered: \\\\(text)")
         }
         .onAppear {
             let viewModel = ViewModel()
             viewModel.bindTo($text)
         }
     }
 }

 

 //TODO:  Tạo một ViewModel với một @Published thuộc tính kiểu Double để thay đổi giá trị của một view.

 
 class ViewModel: ObservableObject {
     @Published var value = 0.0
 }

 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         Slider(value: $viewModel.value)

         Text("Value: \\\\(viewModel.value, specifier: "%.2f")")
     }
 }

 

 //TODO:  Tạo một ViewModel với một @Published thuộc tính kiểu String để thay đổi nội dung của một view.

 
 class ViewModel: ObservableObject {
     @Published var text = "Hello World!"
 }

 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         Text(viewModel.text)

         Button("Change Text") {
             viewModel.text = "Goodbye World!"
         }
     }
 }

 

 //TODO:  Tạo một ViewModel với một @Published thuộc tính kiểu URL để thay đổi đường dẫn của một view.

 
 class ViewModel: ObservableObject {
     @Published var url = URL(string: "<https://www.google.com>")!
 }

 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         WebView(url: viewModel.url)

         Button("Change URL") {
             viewModel.url = URL(string: "<https://www.apple.com>")!
         }
     }
 }

 struct WebView: UIViewRepresentable {
     let url: URL

     func makeUIView(context: Context) -> WKWebView {
         return WKWebView()
     }

     func updateUIView(_ uiView: WKWebView, context: Context) {
         let request = URLRequest(url: url)
         uiView.load(request)
     }
 }

 

 //TODO:  Tạo một ViewModel với một @Published thuộc tính kiểu UIImage để thay đổi hình ảnh của một view.

 
 class ViewModel: ObservableObject {
     @Published var image = UIImage(named: "default")!
 }

 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         Image(uiImage: viewModel.image)
             .resizable()
             .scaledToFit()

         Button("Change Image") {
             viewModel.image = UIImage(named: "new")!
         }
     }
 }

 

 //TODO:  Tạo một ViewModel với một @Published thuộc tính kiểu String để thay đổi tiêu đề của một view.

 
 class ViewModel: ObservableObject {
     @Published var title = "Hello World!"
 }

 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         NavigationView {
             Text(viewModel.title)
                 .navigationBarTitle(viewModel.title)

             Button("Change Title") {
                 viewModel.title = "Goodbye World!"
             }
         }
     }
 }

 

 //TODO:  Tạo một ViewModel với một @Published thuộc tính kiểu Bool để thay đổi trạng thái của một toggle.

 
 class ViewModel: ObservableObject {
     @Published var isOn = false
 }

 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         Toggle(isOn: $viewModel.isOn) {
             Text("Toggle")
         }
     }
 }

 

 //TODO:  Tạo một ViewModel với một @Published thuộc tính kiểu String để thay đổi nội dung của một alert.

 
 class ViewModel: ObservableObject {
     @Published var message = ""

     func showAlert() {
         message = "Hello World!"
     }
 }

 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         Button("Show Alert") {
             viewModel.showAlert()
         }
         .alert(isPresented: $viewModel.message.isEmpty) {
             Alert(title: Text("Alert"), message: Text(viewModel.message), dismissButton: .default(Text("OK")))
         }
     }
 }

 

 //TODO:  Tạo một ViewModel với một @Published thuộc tính kiểu String để thay đổi nội dung của một sheet.

 
 class ViewModel: ObservableObject {
     @Published var message = ""

     func showSheet() {
         message = "Hello World!"
     }
 }

 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         Button("Show Sheet") {
             viewModel.showSheet()
         }
         .sheet(isPresented: $viewModel.message.isEmpty) {
             Text(viewModel.message)
         }
     }
 }

 

 //TODO:  Tạo một ViewModel với một @Published thuộc tính kiểu String để thay đổi nội dung của một popover.

 
 class ViewModel: ObservableObject {
     @Published var message = ""

     func showPopover() {
         message = "Hello World!"
     }
 }

 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         Button("Show Popover") {
             viewModel.showPopover()
         }
         .popover(isPresented: $viewModel.message.isEmpty) {
             Text(viewModel.message)
         }
     }
 }

 

 //TODO:  Tạo một ViewModel với một @Published thuộc tính kiểu Bool để thay đổi trạng thái của một sheet.

 
 class ViewModel: ObservableObject {
     @Published var isShowingSheet = false
 }

 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         Button("Show Sheet") {
             viewModel.isShowingSheet = true
         }
         .sheet(isPresented: $viewModel.isShowingSheet) {
             Text("Hello World!")
         }
     }
 }

 

 //TODO:  Tạo một ViewModel với một @Published thuộc tính kiểu Double để thay đổi giá trị của một slider.

 
 class ViewModel: ObservableObject {
     @Published var value = 0.0
 }

 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         Slider(value: $viewModel.value)

         Text("\\(viewModel.value, specifier: "%.2f")")
     }
 }

 

 //TODO:  Tạo một ViewModel với một @Published thuộc tính kiểu Int để thay đổi giá trị của một stepper.

 
 class ViewModel: ObservableObject {
     @Published var value = 0
 }

 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         Stepper(value: $viewModel.value) {
             Text("\\(viewModel.value)")
         }
     }
 }

 

 //TODO:  Tạo một ViewModel với một @Published thuộc tính kiểu Bool để thay đổi trạng thái của một switch.

 
 class ViewModel: ObservableObject {
     @Published var isOn = false
 }

 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         Toggle(isOn: $viewModel.isOn) {
             Text("Switch")
         }
     }
 }

 

 //TODO:  Tạo một ViewModel với một @Published thuộc tính kiểu String để thay đổi nội dung của một text field.

 
 class ViewModel: ObservableObject {
     @Published var text = ""
 }

 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         TextField("Enter Text", text: $viewModel.text)
     }
 }

 

 //TODO:  Tạo một ViewModel với một @Published thuộc tính kiểu String để thay đổi nội dung của một text view.

 
 class ViewModel: ObservableObject {
     @Published var text = "Hello World!"
 }

 struct ContentView: View {
     @ObservedObject var viewModel = ViewModel()

     var body: some View {
         Text(viewModel.text)
     }
 }

 

 Đó là một số ví dụ về cách sử dụng @Published trong SwiftUI.
 */
