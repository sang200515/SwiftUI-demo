//
//  LazyVStack.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation
/*
 # Sử dụng LazyVStack để tạo các thành phần theo chiều dọc được tải lười trên màn hình Swift UI

 Swift UI cung cấp các thành phần tuyệt vời để thiết kế giao diện người dùng. Một trong số đó là `LazyVStack`. `LazyVStack` tạo các thành phần theo chiều dọc được tải lười trên màn hình.

 `LazyVStack` tải chỉ những thành phần được hiển thị trên màn hình và giải phóng bộ nhớ của những thành phần không còn được sử dụng. Điều này giúp giảm thiểu tài nguyên hệ thống và tăng hiệu suất ứng dụng.

 Để sử dụng `LazyVStack`, bạn có thể làm như sau:

 
 struct ContentView: View {
     var body: some View {
         ScrollView {
             LazyVStack {
                 ForEach(0..<100) { index in
                     Text("Item \\(index)")
                 }
             }
         }
     }
 }

 

 Trong đoạn mã trên, `LazyVStack` được đặt trong `ScrollView` để cho phép người dùng cuộn lên và xuống trên màn hình. `ForEach` được sử dụng để tạo ra các thành phần `Text` được liệt kê theo thứ tự từ 0 đến 99.

 `LazyVStack` cũng hỗ trợ việc sắp xếp các thành phần bằng cách sử dụng các thuộc tính như `alignment`, `spacing`, `padding`, v.v.

 Đó là cách sử dụng `LazyVStack` để tạo các thành phần theo chiều dọc được tải lười trên màn hình Swift UI. Hãy thử nó và tận dụng lợi ích của nó cho ứng dụng của bạn!

 Bạn có thể sử dụng thuộc tính `alignment` để căn chỉnh các thành phần trong `LazyVStack`. Ví dụ, để căn giữa các thành phần, bạn có thể sử dụng `center` như sau:

 
 LazyVStack(alignment: .center) {
     // các thành phần
 }

 

 Thuộc tính `alignment` còn hỗ trợ các giá trị khác như `.leading`, `.trailing`, `.top`, `.bottom`, `.firstTextBaseline`, `.lastTextBaseline`, `.topLeading`, `.topTrailing`, `.bottomLeading`, và `.bottomTrailing`. Bạn có thể thử sử dụng các giá trị này để căn chỉnh các thành phần theo cách khác nhau tùy thuộc vào yêu cầu của ứng dụng của bạn.

 Trong Swift UI, `LazyVStack` là một thành phần tuyệt vời để tạo các thành phần theo chiều dọc được tải lười trên màn hình. `LazyVStack` tải chỉ những thành phần được hiển thị trên màn hình và giải phóng bộ nhớ của những thành phần không còn được sử dụng. Điều này giúp giảm thiểu tài nguyên hệ thống và tăng hiệu suất ứng dụng.

 Để sử dụng `LazyVStack`, bạn có thể làm như sau:

 
 struct ContentView: View {
     var body: some View {
         ScrollView {
             LazyVStack {
                 ForEach(0..<100) { index in
                     Text("Item \\\\(index)")
                 }
             }
         }
     }
 }

 

 Trong đoạn mã trên, `LazyVStack` được đặt trong `ScrollView` để cho phép người dùng cuộn lên và xuống trên màn hình. `ForEach` được sử dụng để tạo ra các thành phần `Text` được liệt kê theo thứ tự từ 0 đến 99.

 Thuộc tính `alignment` của `LazyVStack` cho phép bạn căn chỉnh các thành phần trong `LazyVStack`. `LazyVStack` cũng hỗ trợ các thuộc tính khác như `spacing`, `padding`, v.v.

 Các giá trị của `alignment` bao gồm:

 - `.leading`: căn chỉnh các thành phần theo cạnh trái của `LazyVStack`.
 - `.trailing`: căn chỉnh các thành phần theo cạnh phải của `LazyVStack`.
 - `.top`: căn chỉnh các thành phần theo cạnh trên của `LazyVStack`.
 - `.bottom`: căn chỉnh các thành phần theo cạnh dưới của `LazyVStack`.
 - `.center`: căn chỉnh các thành phần theo trung tâm của `LazyVStack`.
 - `.firstTextBaseline`: căn chỉnh các thành phần theo đường cơ sở của văn bản đầu tiên.
 - `.lastTextBaseline`: căn chỉnh các thành phần theo đường cơ sở của văn bản cuối cùng.
 - `.topLeading`: căn chỉnh các thành phần theo cạnh trên cùng bên trái của `LazyVStack`.
 - `.topTrailing`: căn chỉnh các thành phần theo cạnh trên cùng bên phải của `LazyVStack`.
 - `.bottomLeading`: căn chỉnh các thành phần theo cạnh dưới cùng bên trái của `LazyVStack`.
 - `.bottomTrailing`: căn chỉnh các thành phần theo cạnh dưới cùng bên phải của `LazyVStack`.

 Bạn có thể sử dụng các giá trị này để căn chỉnh các thành phần theo cách khác nhau tùy thuộc vào yêu cầu của ứng dụng của bạn.

 Dưới đây là 20 ví dụ về cách sử dụng `LazyVStack` trong Swift UI:

 //TODO:  Hiển thị danh sách các mục:

 
 LazyVStack {
     ForEach(items) { item in
         Text(item.name)
     }
 }

 

 //TODO:  Hiển thị danh sách các mục có khả năng được chọn:

 
 LazyVStack {
     ForEach(items) { item in
         Button(action: {
             // xử lý khi mục được chọn
         }) {
             Text(item.name)
         }
     }
 }

 

 //TODO:  Hiển thị danh sách các mục với hình ảnh:

 
 LazyVStack {
     ForEach(items) { item in
         HStack {
             Image(item.imageName)
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .frame(width: 50, height: 50)
             Text(item.name)
         }
     }
 }

 

 //TODO:  Hiển thị danh sách các mục với mô tả:

 
 LazyVStack {
     ForEach(items) { item in
         VStack(alignment: .leading) {
             Text(item.name)
                 .font(.headline)
             Text(item.description)
                 .font(.subheadline)
                 .foregroundColor(.gray)
         }
     }
 }

 

 //TODO:  Hiển thị danh sách các mục với nút chuyển tiếp:

 
 LazyVStack {
     ForEach(items) { item in
         NavigationLink(destination: ItemDetailView(item: item)) {
             Text(item.name)
         }
     }
 }

 

 //TODO:  Hiển thị danh sách các mục với nút chọn:

 
 @State var selectedItem: Item?

 LazyVStack {
     ForEach(items) { item in
         Button(action: {
             selectedItem = item
         }) {
             HStack {
                 Text(item.name)
                 if selectedItem == item {
                     Spacer()
                     Image(systemName: "checkmark")
                 }
             }
         }
     }
 }

 

 //TODO:  Hiển thị danh sách các mục với phân cách:

 
 LazyVStack(spacing: 10) {
     ForEach(items) { item in
         VStack {
             Text(item.name)
             Divider()
         }
     }
 }

 

 //TODO:  Hiển thị danh sách các mục có thể kéo lên và xuống:

 
 ScrollView {
     LazyVStack {
         ForEach(items) { item in
             Text(item.name)
         }
     }
 }

 

 //TODO:  Hiển thị danh sách các mục với nút xóa:

 
 LazyVStack {
     ForEach(items) { item in
         HStack {
             Text(item.name)
             Spacer()
             Button(action: {
                 // xử lý khi nút xóa được nhấn
             }) {
                 Image(systemName: "trash")
             }
         }
     }
 }

 

 //TODO:  Hiển thị danh sách các mục lấy từ API:

 
 @State var items: [Item] = []

 var body: some View {
     ScrollView {
         LazyVStack {
             ForEach(items) { item in
                 Text(item.name)
             }
         }
     }
     .onAppear {
         // call API và cập nhật danh sách các mục
     }
 }

 

 //TODO:  Hiển thị danh sách các mục với nút thêm mới:

 
 @State var items: [Item] = []
 @State var isAddingNewItem = false

 var body: some View {
     ScrollView {
         LazyVStack {
             ForEach(items) { item in
                 Text(item.name)
             }
         }
     }
     .navigationBarItems(trailing: Button(action: {
         isAddingNewItem = true
     }) {
         Image(systemName: "plus")
     })
     .sheet(isPresented: $isAddingNewItem) {
         // hiển thị màn hình thêm mới mục
     }
 }

 

 //TODO:  Hiển thị danh sách các mục với khả năng kéo thả:

 
 @State var items: [Item] = []

 var body: some View {
     ScrollView {
         LazyVStack {
             ForEach(items) { item in
                 Text(item.name)
                     .onDrag {
                         // bắt đầu kéo thả
                         return NSItemProvider(object: item.name as NSString)
                     }
             }
         }
     }
 }

 

 //TODO:  Hiển thị danh sách các mục với nút lưu trạng thái:

 
 @State var items: [Item] = []

 var body: some View {
     ScrollView {
         LazyVStack {
             ForEach(items) { item in
                 HStack {
                     Text(item.name)
                     Spacer()
                     Button(action: {
                         item.isFavorited.toggle()
                     }) {
                         if item.isFavorited {
                             Image(systemName: "heart.fill")
                         } else {
                             Image(systemName: "heart")
                         }
                     }
                 }
             }
         }
     }
 }

 

 //TODO:  Hiển thị danh sách các mục với nút chia sẻ:

 
 @State var items: [Item] = []

 var body: some View {
     ScrollView {
         LazyVStack {
             ForEach(items) { item in
                 HStack {
                     Text(item.name)
                     Spacer()
                     Button(action: {
                         // chia sẻ mục
                     }) {
                         Image(systemName: "square.and.arrow.up")
                     }
                 }
             }
         }
     }
 }

 

 //TODO:  Hiển thị danh sách các mục với nút tải lại:

 
 @State var items: [Item] = []
 @State var isLoading = false

 var body: some View {
     ScrollView {
         LazyVStack {
             ForEach(items) { item in
                 Text(item.name)
             }
         }
     }
     .navigationBarItems(trailing: Button(action: {
         isLoading = true
         // call API để tải lại danh sách các mục
     }) {
         if isLoading {
             ProgressView()
         } else {
             Image(systemName: "arrow.clockwise")
         }
     })
 }

 

 //TODO:  Hiển thị danh sách các mục với nút sửa:

 
 @State var items: [Item] = []

 var body: some View {
     ScrollView {
         LazyVStack {
             ForEach(items) { item in
                 HStack {
                     Text(item.name)
                     Spacer()
                     Button(action: {
                         // hiển thị màn hình sửa đổi
                     }) {
                         Image(systemName: "pencil")
                     }
                 }
             }
         }
     }
 }

 

 //TODO:  Hiển thị danh sách các mục với nút tìm kiếm:

 
 @State var items: [Item] = []
 @State var searchText = ""

 var body: some View {
     VStack {
         SearchBar(text: $searchText)
         ScrollView {
             LazyVStack {
                 ForEach(items.filter {
                     searchText.isEmpty || $0.name.localizedStandardContains(searchText)
                 }) { item in
                     Text(item.name)
                 }
             }
         }
     }
 }

 

 //TODO:  Hiển thị danh sách các mục với nút đăng nhập:

 
 @State var items: [Item] = []
 @State var isLoggedIn = false

 var body: some View {
     VStack {
         if isLoggedIn {
             ScrollView {
                 LazyVStack {
                     ForEach(items) { item in
                         Text(item.name)
                     }
                 }
             }
         } else {
             Button(action: {
                 // hiển thị màn hình đăng nhập
             }) {
                 Text("Đăng nhập")
             }
         }
     }
 }

 

 //TODO:  Hiển thị danh sách các mục với nút lọc:

 
 @State var items: [Item] = []
 @State var isFiltering = false

 var body: some View {
     ScrollView {
         LazyVStack {
             ForEach(items) { item in
                 Text(item.name)
             }
         }
     }
     .navigationBarItems(trailing: Button(action: {
         isFiltering = true
     }) {
         Image(systemName: "slider.horizontal.3")
     })
     .sheet(isPresented: $isFiltering) {
         // hiển thị màn hình lọc
     }
 }

 

 //TODO:  Hiển thị danh sách các mục với nút chuyển đổi chế độ xem:

 
 @State var items: [Item] = []
 @State var isGridView = false

 var body: some View {
     VStack {
         Button(action: {
             isGridView.toggle()
         }) {
             if isGridView {
                 Image(systemName: "square.grid.3x3")
             } else {
                 Image(systemName: "list.dash")
             }
         }
         if isGridView {
             LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                 ForEach(items) { item in
                     Text(item.name)
                 }
             }
         } else {
             ScrollView {
                 LazyVStack {
                     ForEach(items) { item in
                         Text(item.name)
                     }
                 }
             }
         }
     }
 }

 

 Đó là 20 ví dụ về cách sử dụng `LazyVStack` trong Swift UI. Hãy thử nó và tận dụng lợi ích của nó cho ứng dụng của bạn!
 */
