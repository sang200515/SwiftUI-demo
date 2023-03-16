//
//  Keyword.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation

/*
 # `Contentshape()` trong SwiftUI

 //MARK: `Contentshape()` là một phương thức trong SwiftUI được sử dụng để tạo hình dạng cho một nội dung bên trong một khung.

 Phương thức này có thể được sử dụng để tạo hình dạng cho các phần tử trong giao diện người dùng như văn bản, hình ảnh, hoặc các thành phần khác.

 Các hình dạng có thể được tạo bằng cách sử dụng các giá trị enum như `.rectangle`, `.circle`, `.roundedRectangle` và `.ellipse`.

 Ví dụ:

 ```
 Text("Hello, World!")
     .frame(width: 200, height: 100)
     .background(Color.blue)
     .contentShape(Rectangle())

 ```

 Trong ví dụ này, phương thức `Contentshape()` được sử dụng để tạo một hình chữ nhật cho nội dung của đối tượng `Text`.

 Chúng ta có thể thấy rằng khi ta chạm vào đối tượng văn bản, chỉ khu vực của hình chữ nhật này mới được nhận diện là khu vực đáp ứng sự kiện chạm.

 Ví dụ khác:

 ```
 Image("example-image")
     .resizable()
     .frame(width: 200, height: 200)
     .background(Color.green)
     .clipShape(Circle())
     .contentShape(Circle())

 ```

 Trong ví dụ này, phương thức `Contentshape()` được sử dụng để tạo một hình tròn cho nội dung của đối tượng `Image`.

 Chúng ta có thể thấy rằng khi ta chạm vào đối tượng hình ảnh, chỉ khu vực của hình tròn này mới được nhận diện là khu vực đáp ứng sự kiện chạm.

 //MARK: Group Trong SwiftUI, `Group` là một view container, được sử dụng để nhóm các view con thành một nhóm duy nhất. Group không có tác động đến giao diện người dùng và không có tác động đến việc xếp chồng các view con của nó.

 Một trong những lợi ích của việc sử dụng `Group` là giúp cho việc quản lý các view con của một view cha trở nên dễ dàng hơn. Nó cho phép bạn thêm hoặc xóa các view con một cách dễ dàng hơn mà không ảnh hưởng đến cấu trúc tổng thể của giao diện.

 Ví dụ:

 ```
 Group {
     Text("View 1")
     Text("View 2")
     Text("View 3")
 }

 ```

 Trong ví dụ trên, `Group` chứa ba `Text` view và nhóm chúng lại thành một nhóm duy nhất. Khi sử dụng `Group`, SwiftUI sẽ tự động xếp chồng các view con của nó, vì vậy bạn không cần phải lo lắng về việc sắp xếp chúng.





 */
