//
//  Padding.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation
/*
 #

 Trong SwiftUI, `padding` là một thuộc tính giúp định vị vị trí hiển thị của một view trên màn hình. Thuộc tính này cho phép bạn thêm khoảng cách giữa đường viền của view và các thành phần xung quanh nó.

 Cú pháp sử dụng thuộc tính `padding` như sau:

 
 view.padding([top: CGFloat, leading: CGFloat, bottom: CGFloat, trailing: CGFloat])

 

 Trong đó, `top`, `leading`, `bottom` và `trailing` là các giá trị khoảng cách đến vị trí phía trên, bên trái, dưới và bên phải của view.

 Bạn cũng có thể sử dụng `padding` với một giá trị duy nhất để thiết lập khoảng cách như nhau trên tất cả các cạnh của view:

 
 view.padding(CGFloat)

 

 Ngoài ra, bạn có thể sử dụng syntax ngắn gọn hơn để chỉ định giá trị cho cả bốn cạnh của view:

 
 view.padding(CGFloat)
 view.padding([CGFloat])
 view.padding([CGFloat, CGFloat])
 view.padding([CGFloat, CGFloat, CGFloat])
 view.padding([CGFloat, CGFloat, CGFloat, CGFloat])

 

 Ví dụ, để đặt một khoảng cách 10 pixel từ trên xuống, bạn có thể sử dụng:

 
 Text("Hello, SwiftUI!")
     .padding(.top, 10)

 

 Hoặc nếu bạn muốn thiết lập cùng một giá trị 20 pixel cho tất cả các cạnh của view, bạn có thể sử dụng:

 
 Text("Hello, SwiftUI!")
     .padding(20)

 

 Hy vọng bài viết này giúp bạn hiểu rõ hơn về thuộc tính `padding` trong SwiftUI.

 Dưới đây là 30 ví dụ về cách sử dụng thuộc tính `padding` trong SwiftUI:

 //TODO:  `Text("Hello, SwiftUI!").padding()`: đặt khoảng cách như nhau ở cả 4 cạnh của text.
 2. `Text("Hello, SwiftUI!").padding(10)`: đặt khoảng cách 10 pixel ở cả 4 cạnh của text.
 3. `Text("Hello, SwiftUI!").padding(.top, 20)`: đặt khoảng cách 20 pixel từ trên xuống của text.
 4. `Text("Hello, SwiftUI!").padding([.top, .bottom], 20)`: đặt khoảng cách 20 pixel từ trên xuống và từ dưới lên của text.
 5. `Text("Hello, SwiftUI!").padding([.leading, .trailing], 20)`: đặt khoảng cách 20 pixel từ bên trái sang và từ bên phải sang của text.
 6. `Text("Hello, SwiftUI!").padding([.top, .trailing], 20)`: đặt khoảng cách 20 pixel từ trên xuống và từ bên phải sang của text.
 7. `Text("Hello, SwiftUI!").padding([.top, .trailing], [20, 10])`: đặt khoảng cách 20 pixel từ trên xuống và 10 pixel từ bên phải sang của text.
 8. `Text("Hello, SwiftUI!").padding(.vertical, 20)`: đặt khoảng cách 20 pixel từ trên xuống và từ dưới lên của text.
 9. `Text("Hello, SwiftUI!").padding(.horizontal, 20)`: đặt khoảng cách 20 pixel từ bên trái sang và từ bên phải sang của text.
 10. `Text("Hello, SwiftUI!").padding(.all, 20)`: đặt khoảng cách 20 pixel ở cả 4 cạnh của text.
 1//TODO:  `Text("Hello, SwiftUI!").padding(.leading, 20)`: đặt khoảng cách 20 pixel từ bên trái sang của text.
 12. `Text("Hello, SwiftUI!").padding(.bottom, 20)`: đặt khoảng cách 20 pixel từ dưới lên của text.
 13. `Image(systemName: "person.fill").padding()`: đặt khoảng cách như nhau ở cả 4 cạnh của hình ảnh.
 14. `Image(systemName: "person.fill").padding(10)`: đặt khoảng cách 10 pixel ở cả 4 cạnh của hình ảnh.
 15. `Image(systemName: "person.fill").padding(.top, 20)`: đặt khoảng cách 20 pixel từ trên xuống của hình ảnh.
 16. `Image(systemName: "person.fill").padding([.top, .bottom], 20)`: đặt khoảng cách 20 pixel từ trên xuống và từ dưới lên của hình ảnh.
 17. `Image(systemName: "person.fill").padding([.leading, .trailing], 20)`: đặt khoảng cách 20 pixel từ bên trái sang và từ bên phải sang của hình ảnh.
 18. `Image(systemName: "person.fill").padding([.top, .trailing], 20)`: đặt khoảng cách 20 pixel từ trên xuống và từ bên phải sang của hình ảnh.
 19. `Image(systemName: "person.fill").padding([.top, .trailing], [20, 10])`: đặt khoảng cách 20 pixel từ trên xuống và 10 pixel từ bên phải sang của hình ảnh.
 20. `Image(systemName: "person.fill").padding(.vertical, 20)`: đặt khoảng cách 20 pixel từ trên xuống và từ dưới lên của hình ảnh.
 2//TODO:  `Image(systemName: "person.fill").padding(.horizontal, 20)`: đặt khoảng cách 20 pixel từ bên trái sang và từ bên phải sang của hình ảnh.
 22. `Image(systemName: "person.fill").padding(.all, 20)`: đặt khoảng cách 20 pixel ở cả 4 cạnh của hình ảnh.
 23. `Image(systemName: "person.fill").padding(.leading, 20)`: đặt khoảng cách 20 pixel từ bên trái sang của hình ảnh.
 24. `Image(systemName: "person.fill").padding(.bottom, 20)`: đặt khoảng cách 20 pixel từ dưới lên của hình ảnh.
 25. `Button("Hello, SwiftUI!").padding()`: đặt khoảng cách như nhau ở cả 4 cạnh của nút.
 26. `Button("Hello, SwiftUI!").padding(10)`: đặt khoảng cách 10 pixel ở cả 4 cạnh của nút.
 27. `Button("Hello, SwiftUI!").padding(.top, 20)`: đặt khoảng cách 20 pixel từ trên xuống của nút.
 28. `Button("Hello, SwiftUI!").padding([.top, .bottom], 20)`: đặt khoảng cách 20 pixel từ trên xuống và từ dưới lên của nút.
 29. `Button("Hello, SwiftUI!").padding([.leading, .trailing], 20)`: đặt khoảng cách 20 pixel từ bên trái sang và từ bên phải sang của nút.
 30. `Button("Hello, SwiftUI!").padding([.top, .trailing], [20, 10])`: đặt khoảng cách 20 pixel từ trên xuống và 10 pixel từ bên phải sang của nút.
 */
