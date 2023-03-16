//
//  List.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation
/*
 # Sử dụng List để tạo danh sách các mục trên màn hình Swift UI

 List là một trong những cách đơn giản nhất để tạo danh sách các mục trong ứng dụng của bạn trên màn hình Swift UI. Hãy làm theo các bước dưới đây để tạo danh sách các mục trên màn hình của bạn.

 ## Bước 1: Tạo một danh sách

 Để bắt đầu, hãy tạo một danh sách trong ứng dụng của bạn bằng cách sử dụng List:

 
 List {
     Text("Mục 1")
     Text("Mục 2")
     Text("Mục 3")
 }

 

 Trong ví dụ trên, chúng tôi đã tạo một danh sách các mục bằng cách sử dụng List và thêm ba Text Views vào danh sách.

 ## Bước 2: Thêm các thuộc tính vào danh sách

 Bạn có thể thêm các thuộc tính như tên danh sách và phần đầu và cuối của danh sách bằng cách sử dụng các thuộc tính của List:

 
 List {
     Text("Mục 1")
     Text("Mục 2")
     Text("Mục 3")
 }
 .listStyle(GroupedListStyle())
 .navigationBarTitle(Text("Danh sách các mục"))

 

 Trong ví dụ trên, chúng tôi đã thêm phong cách của danh sách và tên danh sách.

 ## Bước 3: Tạo một danh sách động

 Bạn có thể tạo một danh sách động bằng cách sử dụng một mảng các mục và vòng lặp ForEach:

 swift
 struct ContentView: View {
     let items = ["Mục 1", "Mục 2", "Mục 3"]
     var body: some View {
         List {
             ForEach(items, id: \\.self) { item in
                 Text(item)
             }
         }
         .listStyle(GroupedListStyle())
         .navigationBarTitle(Text("Danh sách các mục"))
     }
 }

 

 Trong ví dụ trên, chúng tôi đã tạo một danh sách động bằng cách sử dụng một mảng các mục và vòng lặp ForEach.

 ## Kết luận

 Tổng hợp các cách sử dụng list trong swift ui đang là một chủ đề rất được quan tâm trong cộng đồng lập trình iOS hiện nay. Mặc dù có rất nhiều tài liệu hướng dẫn trên mạng, nhưng đa phần đều dừng lại ở mức độ cơ bản và không đủ chi tiết để giải quyết các vấn đề phức tạp trong quá trình phát triển ứng dụng. Do đó, trong bài viết này, chúng tôi sẽ tổng hợp các cách sử dụng list trong swift ui một cách chi tiết hơn, giúp bạn hiểu rõ hơn về cách thức hoạt động của list và các tính năng liên quan đến nó.

 Trong swift ui, list được sử dụng để hiển thị danh sách các phần tử trong giao diện. Các phần tử này có thể là text, image, hoặc các view khác. Bạn có thể sử dụng list để hiển thị các items lấy từ một mảng hoặc được tạo ra bằng các đối tượng model. Ngoài ra, list còn cung cấp các tính năng tùy chỉnh như thêm ảnh đại diện cho mỗi item, thêm header hoặc footer cho toàn bộ list.

 Trong các ứng dụng thực tế, list thường được sử dụng để hiển thị các danh sách sản phẩm, các tin tức, hoặc các mục trong menu. Với cách sử dụng list đúng, bạn có thể tạo ra các giao diện đẹp mắt và dễ dàng tương tác với người dùng.

 Để hiểu rõ hơn về cách sử dụng list trong Swift UI, chúng ta hãy xem qua một vài ví dụ cụ thể dưới đây:

 ## Ví dụ 1: List đơn giản với các mục cố định

 
 struct SimpleListView: View {
     var body: some View {
         List {
             Text("Mục 1")
             Text("Mục 2")
             Text("Mục 3")
         }
     }
 }

 

 Trong ví dụ này, chúng ta đã tạo một List đơn giản với các mục cố định "Mục 1", "Mục 2" và "Mục 3". Các mục này được định nghĩa bằng các Text View, và được sử dụng trong List mà không cần bất kỳ thuộc tính nào khác.

 ## Ví dụ 2: List với các mục động từ một mảng

 
 struct DynamicListView: View {
     let items = ["Mục 1", "Mục 2", "Mục 3"]
     var body: some View {
         List(items, id: \\.self) { item in
             Text(item)
         }
     }
 }

 

 Trong ví dụ này, chúng ta đã tạo một List với các mục động được tạo từ một mảng các chuỗi. List nhận vào mảng này làm tham số đầu tiên, và sử dụng vòng lặp ForEach để tạo ra các Text View cho mỗi mục trong mảng. Lưu ý rằng chúng ta đã thêm thuộc tính id để xác định mỗi mục trong List.

 ## Ví dụ 3: List với các mục được tùy chỉnh hơn

 
 struct CustomizedListView: View {
     let items = ["Mục 1", "Mục 2", "Mục 3"]
     var body: some View {
         List(items, id: \\.self) { item in
             HStack {
                 Image(systemName: "circle")
                 Text(item)
                     .fontWeight(.bold)
                 Spacer()
                 Image(systemName: "chevron.right")
             }
         }
         .listStyle(GroupedListStyle())
         .navigationBarTitle("Danh sách các mục")
     }
 }

 

 Trong ví dụ này, chúng ta đã tạo một List với các mục được tùy chỉnh hơn so với các ví dụ trước đó. Các mục được hiển thị bằng một HStack, bao gồm một ảnh, một Text View có độ dày chữ được thiết lập là bold, một Spacer để căn giữa nội dung, và một ảnh khác. Chúng ta cũng đã thêm các thuộc tính để tùy chỉnh danh sách, bao gồm listStyle và navigationBarTitle.

 Hy vọng rằng những ví dụ trên đã giúp bạn hiểu rõ hơn về cách sử dụng list trong Swift UI. Với các tính năng tùy chỉnh của nó, list là một công cụ mạnh mẽ để hiển thị các dữ liệu trong giao diện người dùng của ứng dụng của bạn.

 Dưới đây là 20 ví dụ về thiết kế giao diện cho List trong Swift UI:

 //TODO:  List đơn giản với các mục cố định:

 
 struct SimpleListView: View {
     var body: some View {
         List {
             Text("Mục 1")
             Text("Mục 2")
             Text("Mục 3")
         }
     }
 }

 

 //TODO:  List với các mục động từ một mảng:

 
 struct DynamicListView: View {
     let items = ["Mục 1", "Mục 2", "Mục 3"]
     var body: some View {
         List(items, id: \\\\.self) { item in
             Text(item)
         }
     }
 }

 

 //TODO:  List với các mục được tùy chỉnh hơn:

 
 struct CustomizedListView: View {
     let items = ["Mục 1", "Mục 2", "Mục 3"]
     var body: some View {
         List(items, id: \\\\.self) { item in
             HStack {
                 Image(systemName: "circle")
                 Text(item)
                     .fontWeight(.bold)
                 Spacer()
                 Image(systemName: "chevron.right")
             }
         }
         .listStyle(GroupedListStyle())
         .navigationBarTitle("Danh sách các mục")
     }
 }

 

 //TODO:  List với các mục được chia nhóm:

 
 struct GroupedListView: View {
     let items = ["Mục 1", "Mục 2", "Mục 3", "Mục 4", "Mục 5", "Mục 6"]
     var body: some View {
         List {
             Section(header: Text("Nhóm 1")) {
                 ForEach(items[..<3], id: \\\\.self) { item in
                     Text(item)
                 }
             }
             Section(header: Text("Nhóm 2")) {
                 ForEach(items[3..<6], id: \\\\.self) { item in
                     Text(item)
                 }
             }
         }
         .listStyle(GroupedListStyle())
         .navigationBarTitle("Danh sách các mục")
     }
 }

 

 //TODO:  List với các mục có thể lựa chọn:

 
 struct SelectableListView: View {
     let items = ["Mục 1", "Mục 2", "Mục 3"]
     @State private var selectedItems = Set<String>()
     var body: some View {
         List(items, id: \\\\.self) { item in
             HStack {
                 Text(item)
                 Spacer()
                 if selectedItems.contains(item) {
                     Image(systemName: "checkmark")
                 }
             }
             .onTapGesture {
                 if self.selectedItems.contains(item) {
                     self.selectedItems.remove(item)
                 } else {
                     self.selectedItems.insert(item)
                 }
             }
         }
         .listStyle(GroupedListStyle())
         .navigationBarTitle("Danh sách các mục")
     }
 }

 

 //TODO:  List với các mục có thể di chuyển:

 
 struct ReorderableListView: View {
     @State private var items = ["Mục 1", "Mục 2", "Mục 3"]
     var body: some View {
         List {
             ForEach(items, id: \\\\.self) { item in
                 Text(item)
             }
             .onMove { indices, newOffset in
                 self.items.move(fromOffsets: indices, toOffset: newOffset)
             }
         }
         .listStyle(GroupedListStyle())
         .navigationBarTitle("Danh sách các mục")
         .navigationBarItems(trailing: EditButton())
     }
 }

 

 //TODO:  List với các mục có thể xóa:

 
 struct DeletableListView: View {
     @State private var items = ["Mục 1", "Mục 2", "Mục 3"]
     var body: some View {
         List {
             ForEach(items, id: \\\\.self) { item in
                 Text(item)
             }
             .onDelete { indices in
                 self.items.remove(atOffsets: indices)
             }
         }
         .listStyle(GroupedListStyle())
         .navigationBarTitle("Danh sách các mục")
         .navigationBarItems(trailing: EditButton())
     }
 }

 

 //TODO:  List với các mục có thể lựa chọn đa chọn:

 
 struct MultiSelectableListView: View {
     let items = ["Mục 1", "Mục 2", "Mục 3"]
     @State private var selectedItems = Set<String>()
     var body: some View {
         List(items, id: \\\\.self) { item in
             HStack {
                 Text(item)
                 Spacer()
                 if self.selectedItems.contains(item) {
                     Image(systemName: "checkmark")
                 }
             }
             .onTapGesture {
                 if self.selectedItems.contains(item) {
                     self.selectedItems.remove(item)
                 } else {
                     self.selectedItems.insert(item)
                 }
             }
         }
         .listStyle(GroupedListStyle())
         .navigationBarTitle("Danh sách các mục")
         .navigationBarItems(trailing: Button(action: {
             self.selectedItems.removeAll()
         }) {
             Text("Bỏ chọn tất cả")
         })
     }
 }

 

 //TODO:  List với các mục được tạo bằng đối tượng model:

 
 struct ModelBasedListView: View {
     let items = [
         Item(title: "Mục 1", subtitle: "Mô tả mục 1"),
         Item(title: "Mục 2", subtitle: "Mô tả mục 2"),
         Item(title: "Mục 3", subtitle: "Mô tả mục 3"),
     ]
     var body: some View {
         List(items) { item in
             VStack(alignment: .leading) {
                 Text(item.title)
                     .fontWeight(.bold)
                 Text(item.subtitle)
                     .foregroundColor(.secondary)
             }
         }
         .listStyle(GroupedListStyle())
         .navigationBarTitle("Danh sách các mục")
     }
 }
 struct Item: Identifiable {
     let id = UUID()
     let title: String
     let subtitle: String
 }

 

 //TODO:  List với các mục được tạo bằng đối tượng model và có ảnh đại diện:

 
 struct ImageListView: View {
     let items = [
         Item(title: "Mục 1", subtitle: "Mô tả mục 1", imageName: "person.circle"),
         Item(title: "Mục 2", subtitle: "Mô tả mục 2", imageName: "star.circle"),
         Item(title: "Mục 3", subtitle: "Mô tả mục 3", imageName: "heart.circle"),
     ]
     var body: some View {
         List(items) { item in
             HStack {
                 Image(systemName: item.imageName)
                     .foregroundColor(.blue)
                 VStack(alignment: .leading) {
                     Text(item.title)
                         .fontWeight(.bold)
                     Text(item.subtitle)
                         .foregroundColor(.secondary)
                 }
             }
         }
         .listStyle(GroupedListStyle())
         .navigationBarTitle("Danh sách các mục")
     }
 }
 struct Item: Identifiable {
     let id = UUID()
     let title: String
     let subtitle: String
     let imageName: String
 }

 

 //TODO:  List với các mục được tạo bằng đối tượng model và có ảnh nền:

 
 struct BackgroundImageListView: View {
     let items = [
         Item(title: "Mục 1", subtitle: "Mô tả mục 1", imageName: "person.circle"),
         Item(title: "Mục 2", subtitle: "Mô tả mục 2", imageName: "star.circle"),
         Item(title: "Mục 3", subtitle: "Mô tả mục 3", imageName: "heart.circle"),
     ]
     var body: some View {
         List(items) { item in
             VStack(alignment: .leading) {
                 Text(item.title)
                     .fontWeight(.bold)
                 Text(item.subtitle)
                     .foregroundColor(.secondary)
             }
             .padding()
             .background(
                 Image(item.imageName)
                     .resizable()
                     .scaledToFill()
                     .opacity(0.3)
             )
             .cornerRadius(10)
             .padding(.horizontal)
         }
         .listStyle(GroupedListStyle())
         .navigationBarTitle("Danh sách các mục")
     }
 }
 struct Item: Identifiable {
     let id = UUID()
     let title: String
     let subtitle: String
     let imageName: String
 }

 

 //TODO:  List với các mục có thể được kéo dãn:

 
 struct StretchableListView: View {
     @State private var items = ["Mục 1", "Mục 2", "Mục 3"]
     var body: some View {
         List {
             ForEach(items, id: \\\\.self) { item in
                 VStack(alignment: .leading) {
                     Text(item)
                         .fontWeight(.bold)
                     Spacer()
                 }
                 .frame(minHeight: 50)
                 .background(Color.blue)
                 .cornerRadius(10)
                 .padding()
                 .onTapGesture {
                     self.items.append(item)
                 }
             }
         }
         .listStyle(GroupedListStyle())
         .navigationBarTitle("Danh sách các mục")
     }
 }

 

 //TODO:  List với các mục có thể được kéo lên để tải thêm dữ liệu:

 */
