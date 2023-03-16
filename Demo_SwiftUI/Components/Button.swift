//
//  Button.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation

/*

 ## Tạo một Button đơn giản

 Để tạo một Button đơn giản, bạn có thể sử dụng constructor mặc định của lớp Button như sau:

 swift
 Button("Click me!") {
     // Code xử lý khi Button được nhấn
 }

 

 Trong đó, "Click me!" là nội dung hiển thị trên Button. Bạn cũng có thể sử dụng hàm initializer khác để định custom nội dung trên Button.

 ## Tạo một Button với hình ảnh

 Để tạo một Button với hình ảnh, bạn có thể sử dụng constructor khác của lớp Button, cho phép bạn đặt hình ảnh trên Button như sau:

 swift
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Image("icon")
 }

 

 Trong đó, "icon" là tên của hình ảnh hiển thị trên Button.

 ## Tạo một Button với văn bản và hình ảnh

 Để tạo một Button với cả văn bản và hình ảnh, bạn có thể sử dụng constructor khác của lớp Button, cho phép bạn đặt cả văn bản và hình ảnh trên Button như sau:

 swift
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     HStack {
         Image("icon")
         Text("Click me!")
     }
 }

 

 Trong đó, HStack là một thành phần của SwiftUI, cho phép bạn sắp xếp các thành phần con của nó theo chiều ngang.

 ## Tạo một Button với màu nền tùy chỉnh

 Để tạo một Button với màu nền tùy chỉnh, bạn có thể sử dụng modifier background của lớp Button như sau:

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
 }
 .background(Color.blue)

 

 Trong đó, Color.blue là màu nền của Button.

 ## Tạo một Button với kích thước tùy chỉnh

 Để tạo một Button với kích thước tùy chỉnh, bạn có thể sử dụng modifier frame của lớp Button như sau:

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
 }
 .frame(width: 100, height: 50)

 

 Trong đó, width và height là kích thước của Button.

 ## Kết luận

 Trên đây là những cách sử dụng Button để tạo các nút bấm trên màn hình Swift UI. Swift UI cung cấp cho chúng ta rất nhiều tính năng để tạo ra các giao diện đẹp và dễ sử dụng cho người dùng. Với việc sử dụng Button, bạn có thể tạo ra các tính năng tương tác thú vị cho ứng dụng của mình.

 ## Các ví dụ khác về Button trong SwiftUI

 ### //TODO:  Tạo một Button với hiệu ứng tắt đèn

 Để tạo một Button với hiệu ứng tắt đèn, bạn có thể sử dụng modifier blendMode của lớp Button như sau:

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
         .blendMode(.difference)
 }

 

 ### 2. Tạo một Button với hiệu ứng blur

 Để tạo một Button với hiệu ứng blur, bạn có thể sử dụng modifier blur của lớp Button như sau:

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
         .blur(radius: 5)
 }

 

 Trong đó, radius là bán kính của hiệu ứng blur.

 ### 3. Tạo một Button với hiệu ứng đổ bóng

 Để tạo một Button với hiệu ứng đổ bóng, bạn có thể sử dụng modifier shadow của lớp Button như sau:

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
         .shadow(color: .gray, radius: 5, x: 0, y: 5)
 }

 

 Trong đó, .gray là màu của đổ bóng, radius là bán kính của đổ bóng, x và y là vị trí của đổ bóng.

 ### 4. Tạo một Button với hiệu ứng đường viền mờ

 Để tạo một Button với hiệu ứng đường viền mờ, bạn có thể sử dụng modifier overlay của lớp Button kết hợp với lớp RoundedRectangle như sau:

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
         .padding()
         .overlay(
             RoundedRectangle(cornerRadius: 10)
                 .stroke(Color.blue, lineWidth: 2)
                 .blur(radius: 5)
         )
 }

 

 Trong đó, RoundedRectangle là một hình tròn được bo góc, .stroke(Color.blue, lineWidth: 2) là đường viền của hình tròn và .blur(radius: 5) là hiệu ứng blur của đường viền.

 ### 5. Tạo một Button với hiệu ứng bóng mờ

 Để tạo một Button với hiệu ứng bóng mờ, bạn có thể sử dụng modifier shadow của lớp Button kết hợp với lớp RoundedRectangle như sau:

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
         .padding()
         .background(
             RoundedRectangle(cornerRadius: 10)
                 .foregroundColor(.blue)
                 .shadow(radius: 5)
         )
 }

 

 Trong đó, RoundedRectangle là một hình tròn được bo góc, .foregroundColor(.blue) là màu nền của hình tròn và .shadow(radius: 5) là hiệu ứng bóng mờ của hình tròn.

 ### 6. Tạo một Button với hiệu ứng vô hạn

 Để tạo một Button với hiệu ứng vô hạn, bạn có thể sử dụng modifier repeatForever của lớp Button kết hợp với một số hiệu ứng khác như sau:

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
         .animation(Animation.linear(duration: 1).repeatForever(autoreverses: true))
         .rotationEffect(.degrees(360))
 }

 

 Trong đó, .linear(duration: 1).repeatForever(autoreverses: true) là loại animation được sử dụng và .degrees(360) là góc quay của Button.

 ### 7. Tạo một Button với hiệu ứng chạy văn bản

 Để tạo một Button với hiệu ứng chạy văn bản, bạn có thể sử dụng modifier marquee của lớp Button như sau:

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
         .marquee(duration: 5, autoreverses: true)
 }

 

 Trong đó, duration là thời gian chạy của văn bản và autoreverses là lựa chọn để văn bản chạy theo chiều ngược lại khi kết thúc.

 ### 8. Tạo một Button với hiệu ứng xoay

 Để tạo một Button với hiệu ứng xoay, bạn có thể sử dụng modifier rotationEffect của lớp Button như sau:

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
         .rotationEffect(.degrees(45))
 }

 

 Trong đó, .degrees(45) là góc quay của Button.

 ### 9. Tạo một Button với hiệu ứng lật

 Để tạo một Button với hiệu ứng lật, bạn có thể sử dụng modifier rotation3DEffect của lớp Button như sau:

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
         .rotation3DEffect(.degrees(180), axis: (x: //TODO: 0, y: 0.0, z: 0.0))
 }

 

 Trong đó, .degrees(180) là góc quay của Button và (x: //TODO: 0, y: 0.0, z: 0.0) là trục quay của Button.

 ### 10. Tạo một Button với hiệu ứng đèn nhấp nháy

 Để tạo một Button với hiệu ứng đèn nhấp nháy, bạn có thể sử dụng modifier opacity của lớp Button kết hợp với modifier animation như sau:

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
         .opacity(0.5)
         .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
 }

 

 Trong đó, .opacity(0.5) là độ mờ của Button và .easeInOut(duration: 1).repeatForever(autoreverses: true) là loại animation được sử dụng.

 ### Kết luận

 Trên đây là 10 ví dụ về cách sử dụng Button trong SwiftUI, áp dụng tất cả các thuộc tính mà Button có. Với những tính năng mạnh mẽ như vậy, bạn có thể tạo ra các Button đa dạng và tương tác hơn cho ứng dụng của mình.

 Dưới đây là 20 ví dụ về thiết kế giao diện cho Button trong SwiftUI:

 //TODO:  Tạo một Button với hiệu ứng 3D

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
         .padding()
         .background(Color.red)
         .cornerRadius(10)
         .rotation3DEffect(
             .degrees(60),
             axis: (x: //TODO: 0, y: 0.0, z: 0.0)
         )
 }

 

 //TODO:  Tạo một Button với hiệu ứng gradient

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
         .padding()
         .background(
             LinearGradient(
                 gradient: Gradient(
                     colors: [.red, .blue]
                 ),
                 startPoint: .leading,
                 endPoint: .trailing
             )
         )
         .foregroundColor(.white)
         .cornerRadius(10)
 }

 

 //TODO:  Tạo một Button với hiệu ứng vùng nhấn

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
         .padding()
         .background(Color.red)
         .cornerRadius(10)
         .padding(2)
         .overlay(
             RoundedRectangle(cornerRadius: 10)
                 .stroke(Color.white, lineWidth: 2)
                 .padding(2)
         )
         .foregroundColor(.white)
 }

 

 //TODO:  Tạo một Button với hiệu ứng lật

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
         .padding()
         .background(Color.red)
         .cornerRadius(10)
         .rotation3DEffect(
             .degrees(180),
             axis: (x: 0.0, y: //TODO: 0, z: 0.0)
         )
         .foregroundColor(.white)
 }

 

 //TODO:  Tạo một Button với hiệu ứng bóng mờ

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
         .padding()
         .background(Color.red)
         .cornerRadius(10)
         .shadow(radius: 10)
         .foregroundColor(.white)
 }

 

 //TODO:  Tạo một Button với hiệu ứng đổ bóng

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
         .padding()
         .background(
             LinearGradient(
                 gradient: Gradient(
                     colors: [.red, .blue]
                 ),
                 startPoint: .leading,
                 endPoint: .trailing
             )
         )
         .cornerRadius(10)
         .shadow(color: .gray, radius: 10, x: 0, y: 10)
         .foregroundColor(.white)
 }

 

 //TODO:  Tạo một Button với hiệu ứng đường viền

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
         .padding()
         .background(Color.red)
         .cornerRadius(10)
         .overlay(
             RoundedRectangle(cornerRadius: 10)
                 .stroke(Color.white, lineWidth: 2)
         )
         .foregroundColor(.white)
 }

 

 //TODO:  Tạo một Button với hiệu ứng gradient và đường viền

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
         .padding()
         .background(
             LinearGradient(
                 gradient: Gradient(
                     colors: [.red, .blue]
                 ),
                 startPoint: .leading,
                 endPoint: .trailing
             )
         )
         .cornerRadius(10)
         .overlay(
             RoundedRectangle(cornerRadius: 10)
                 .stroke(Color.white, lineWidth: 2)
         )
         .foregroundColor(.white)
 }

 

 //TODO:  Tạo một Button với hiệu ứng gradient và shadow

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
         .padding()
         .background(
             LinearGradient(
                 gradient: Gradient(
                     colors: [.red, .blue]
                 ),
                 startPoint: .leading,
                 endPoint: .trailing
             )
         )
         .cornerRadius(10)
         .shadow(color: .gray, radius: 10, x: 0, y: 10)
         .foregroundColor(.white)
 }

 

 //TODO:  Tạo một Button với hiệu ứng vùng nhấn và gradient

 swift
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Text("Click me!")
         .padding()
         .background(
             LinearGradient(
                 gradient: Gradient(
                     colors: [.red, .blue]
                 ),
                 startPoint: .leading,
                 endPoint: .trailing
             )
         )
         .cornerRadius(10)
         .padding(2)
         .overlay(
             RoundedRectangle(cornerRadius: 10)
                 .stroke(Color.white, lineWidth: 2)
                 .padding(2)
         )
         .foregroundColor(.white)
 }

 

 //TODO:  Tạo một Button với hiệu ứng gradient và lớp RoundedRectangle

 swift
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     RoundedRectangle(cornerRadius: 10)
         .fill(
             LinearGradient(
                 gradient: Gradient(
                     colors: [.red, .blue]
                 ),
                 startPoint: .leading,
                 endPoint: .trailing
             )
         )
         .frame(width: 200, height: 50)
         .overlay(
             Text("Click me!")
                 .foregroundColor(.white)
         )
 }

 

 //TODO:  Tạo một Button với hiệu ứng gradient và hình dạng tùy chỉnh

 
 Button(action: {
     // Code xử lý khi Button được nhấn
 }) {
     Path { path in
         let width = 200.0
         let height = 50.0
         let cornerRadius = 10.0
         path
 
 */
