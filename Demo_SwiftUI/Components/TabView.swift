//
//  TabView.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation

/*
 # Sử dụng TabView để tạo các thẻ tab trên màn hình Swift UI

 # Sử dụng TabView để tạo các thẻ tab trên màn hình Swift UI

 TabView là một trong những thành phần quan trọng của SwiftUI. Với TabView, bạn có thể tạo ra các thẻ tab giúp người dùng chuyển đổi giữa các màn hình khác nhau trong ứng dụng của bạn. Trong bài viết này, chúng ta sẽ tìm hiểu cách sử dụng TabView để tạo các thẻ tab trên màn hình Swift UI.

 ## Bước 1: Tạo các màn hình

 Trước khi tạo các thẻ tab, chúng ta cần tạo các màn hình cần thiết cho ứng dụng của mình. Điều này có thể được thực hiện bằng cách sử dụng các thành phần khác nhau của SwiftUI. Ví dụ, chúng ta có thể sử dụng các thành phần như Text, Image, List và nhiều hơn nữa để tạo các màn hình khác nhau.

 ## Bước 2: Tạo TabView

 Sau khi đã tạo các màn hình cần thiết, chúng ta có thể bắt đầu tạo TabView. Để tạo TabView, chúng ta sử dụng cấu trúc TabView và truyền vào danh sách các thẻ tab mà chúng ta muốn hiển thị. Ví dụ:

 
 TabView {
     Text("Màn hình 1")
         .tabItem {
             Image(systemName: "//TODO: circle")
             Text("Tab 1")
         }
     Text("Màn hình 2")
         .tabItem {
             Image(systemName: "2.circle")
             Text("Tab 2")
         }
 }

 

 Trong ví dụ trên, chúng ta tạo ra hai thẻ tab, mỗi thẻ tab hiển thị một màn hình khác nhau. Trong mỗi thẻ tab, chúng ta sử dụng thuộc tính tabItem để định cấu hình hình ảnh và văn bản hiển thị trên thẻ tab.

 ## Bước 3: Hiển thị TabView

 Sau khi đã tạo TabView, chúng ta có thể hiển thị nó trên màn hình bằng cách sử dụng phương thức tabView của View. Ví dụ:

 
 struct ContentView: View {
     var body: some View {
         TabView {
             Text("Màn hình 1")
                 .tabItem {
                     Image(systemName: "//TODO: circle")
                     Text("Tab 1")
                 }
             Text("Màn hình 2")
                 .tabItem {
                     Image(systemName: "2.circle")
                     Text("Tab 2")
                 }
         }
     }
 }

 

 Trong ví dụ trên, chúng ta sử dụng TabView trong phương thức body của ContentView để hiển thị các thẻ tab.

 ## Kết luận

 Như vậy, chúng ta đã tìm hiểu cách sử dụng TabView để tạo các thẻ tab trên màn hình Swift UI. TabView là một thành phần quan trọng của SwiftUI và giúp chúng ta tạo ra các giao diện người dùng đẹp mắt và dễ sử dụng. Hy vọng bài viết này sẽ giúp bạn hiểu rõ hơn về cách sử dụng TabView và áp dụng nó vào các ứng dụng của mình.

 Khi sử dụng TabView, cần lưu ý rằng nó chỉ nên được sử dụng cho các tác vụ chuyển đổi giữa các màn hình cùng cấp. Nếu bạn muốn hiển thị các màn hình con hay thực hiện các tác vụ phức tạp hơn, bạn nên sử dụng các thành phần khác của SwiftUI, như NavigationView hoặc ScrollView.
 */
