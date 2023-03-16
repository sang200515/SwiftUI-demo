//
//  Image.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation
/*
 Để hiển thị hình ảnh trên màn hình trong SwiftUI, chúng ta có thể sử dụng view Image. Đây là cách để tạo một Image trong SwiftUI:

 
 Image("ten_hinh_anh")

 

 Trong đó, "ten_hinh_anh" là tên của hình ảnh mà bạn muốn hiển thị. Nếu hình ảnh của bạn nằm trong thư mục Assets.xcassets, bạn chỉ cần đặt tên của nó trong chuỗi trên.

 Ngoài ra, bạn có thể thêm thuộc tính để điều chỉnh kích thước của hình ảnh như sau:

 
 Image("ten_hinh_anh")
     .resizable()
     .frame(width: 100, height: 100)

 

 Trong đó, `.resizable()` cho phép bạn thay đổi kích thước của hình ảnh, còn `.frame()` là cách để thiết lập kích thước của chính view Image.

 Nếu bạn muốn thêm một số hiệu ứng đối với hình ảnh, bạn có thể sử dụng các modifier như `.clipShape()` hoặc `.cornerRadius()` để làm tròn góc hoặc cắt hình ảnh theo hình dạng mong muốn. Ví dụ:

 
 Image("ten_hinh_anh")
     .resizable()
     .clipShape(Circle())
     .overlay(Circle().stroke(Color.white, lineWidth: 4))
     .shadow(radius: 10)

 

 Trong đó, `.clipShape(Circle())` sẽ làm tròn góc của hình ảnh, `.overlay()` cho phép bạn thêm một lớp mới lên trên hình ảnh (ở đây là một hình tròn trắng với đường viền màu trắng), còn `.shadow()` sẽ tạo ra một hiệu ứng bóng đổ cho hình ảnh.

 Hy vọng rằng thông tin này sẽ giúp bạn hiển thị hình ảnh trên màn hình trong SwiftUI một cách dễ dàng và đẹp mắt hơn. Nếu bạn cần thêm thông tin hay có bất kỳ câu hỏi nào, hãy để lại bình luận bên dưới để chúng tôi có thể giúp đỡ bạn.

 Tôi rất vui được trợ giúp bạn. Dưới đây là 50 ví dụ về thiết kế giao diện cho Image trong SwiftUI:

 //TODO:  Hiển thị một hình ảnh đơn giản:

 
 Image("ten_hinh_anh")

 

 //TODO:  Hiển thị một hình ảnh và điều chỉnh kích thước của nó:

 
 Image("ten_hinh_anh")
     .resizable()
     .frame(width: 100, height: 100)

 

 //TODO:  Hiển thị một hình ảnh và làm tròn góc của nó:

 
 Image("ten_hinh_anh")
     .clipShape(Circle())

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng bóng đổ:

 
 Image("ten_hinh_anh")
     .shadow(radius: 10)

 

 //TODO:  Hiển thị một hình ảnh và cắt nó theo hình dạng mong muốn:

 
 Image("ten_hinh_anh")
     .mask(Circle())

 

 //TODO:  Hiển thị một hình ảnh và thêm đường viền:

 
 Image("ten_hinh_anh")
     .overlay(Circle().stroke(Color.white, lineWidth: 4))

 

 //TODO:  Hiển thị một hình ảnh và thêm chữ lên trên:

 
 ZStack {
     Image("ten_hinh_anh")
     Text("Chữ trên hình ảnh")
 }

 

 //TODO:  Hiển thị một hình ảnh và thêm gradient lên trên:

 
 ZStack {
     Image("ten_hinh_anh")
     LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom)
 }

 

 //TODO:  Hiển thị một hình ảnh và thêm màu nền:

 
 ZStack {
     Color.purple
     Image("ten_hinh_anh")
 }

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng lấp lánh:

 
 ZStack {
     Image("ten_hinh_anh")
     ForEach(0..<10) { _ in
         Circle()
             .foregroundColor(.white)
             .opacity(0.5)
             .frame(width: 50, height: 50)
             .position(x: CGFloat.random(in: 0..<UIScreen.main.bounds.width), y: CGFloat.random(in: 0..<UIScreen.main.bounds.height))
             .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
     }
 }

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng xoay:

 
 Image("ten_hinh_anh")
     .rotationEffect(.degrees(45))

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng phóng to:

 
 Image("ten_hinh_anh")
     .scaleEffect(2.0)

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng di chuyển:

 
 Image("ten_hinh_anh")
     .offset(x: 50, y: 50)

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng 3D:

 
 Image("ten_hinh_anh")
     .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng động:

 
 Image("ten_hinh_anh")
     .animation(Animation.linear(duration: 2).repeatForever(autoreverses: true))

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng chói sáng:

 
 Image("ten_hinh_anh")
     .brightness(0.5)

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng mờ:

 
 Image("ten_hinh_anh")
     .blur(radius: 10)

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng phản chiếu:

 
 Image("ten_hinh_anh")
     .reflection(.all, 0.5)

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng phân cấp:

 
 Image("ten_hinh_anh")
     .colorMultiply(.red)

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng đổ bóng:

 
 Image("ten_hinh_anh")
     .shadow(color: .black, radius: 10, x: 0, y: 0)

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng nổi bật:

 
 Image("ten_hinh_anh")
     .highlighted(true)

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng vòng tròn:

 
 Image("ten_hinh_anh")
     .clipShape(Circle())
     .overlay(Circle().stroke(Color.white, lineWidth: 4))

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng đường viền:

 
 Image("ten_hinh_anh")
     .border(Color.black, width: 2)

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng bóng mờ:

 
 Image("ten_hinh_anh")
     .shadow(color: .black, radius: 10, x: 0, y: 0)
     .blur(radius: 10)

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng quay trở lại:

 
 Image("ten_hinh_anh")
     .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng chuyển động:

 
 Image("ten_hinh_anh")
     .transition(.slide)

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng mờ dần:

 
 Image("ten_hinh_anh")
     .opacity(0.5)
     .animation(.easeIn(duration: 2))

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng lật ngược:

 
 Image("ten_hinh_anh")
     .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng tối nét:

 
 Image("ten_hinh_anh")
     .contrast(2)

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng xóa:

 
 Image("ten_hinh_anh")
     .eraseToBackground()

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng chuyển động mờ:

 
 Image("ten_hinh_anh")
     .opacity(0.5)
     .animation(.easeInOut(duration: 2).repeatForever())

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng bóng dày:

 
 Image("ten_hinh_anh")
     .shadow(color: .black, radius: 10, x: 0, y: 0)
     .blendMode(.darken)

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng động:

 
 Image("ten_hinh_anh")
     .animation(.spring())

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng chói sáng:

 
 Image("ten_hinh_anh")
     .brightness(0.5)
     .blendMode(.screen)

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng phóng đại:

 
 Image("ten_hinh_anh")
     .scaleEffect(2.0)
     .animation(.easeInOut(duration: 2))

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng nổi bật:

 
 Image("ten_hinh_anh")
     .highlighted(true)
     .blendMode(.softLight)

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng xoay:

 
 Image("ten_hinh_anh")
     .rotationEffect(.degrees(45))
     .animation(.easeInOut(duration: 2))

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng động:

 
 Image("ten_hinh_anh")
     .animation(Animation.linear(duration: 2).repeatForever(autoreverses: true))

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng đổ bóng theo kích thước:

 
 Image("ten_hinh_anh")
     .shadow(color: .black, radius: 10, x: 0, y: 0)
     .shadow(color: .black, radius: 20, x: 0, y: 0)

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng mờ dần:

 
 Image("ten_hinh_anh")
     .opacity(0.5)
     .animation(.easeIn(duration: 2))

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng chuyển động:

 
 Image("ten_hinh_anh")
     .transition(.slide)
     .animation(.easeInOut(duration: 2))

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng lật ngược:

 
 Image("ten_hinh_anh")
     .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
     .animation(.easeInOut(duration: 2))

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng phóng đại:

 
 Image("ten_hinh_anh")
     .scaleEffect(2.0)
     .animation(.easeInOut(duration: 2).repeatForever())

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng nổi bật:

 
 Image("ten_hinh_anh")
     .highlighted(true)
     .blendMode(.overlay)

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng xoay:

 
 Image("ten_hinh_anh")
     .rotationEffect(.degrees(45))
     .animation(.easeInOut(duration: 2).repeatForever())

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng động:

 
 Image("ten_hinh_anh")
     .animation(Animation.linear(duration: 2).repeatForever(autoreverses: true))

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng đổ bóng theo kích thước:

 
 Image("ten_hinh_anh")
     .shadow(color: .black, radius: 10, x: 0, y: 0)
     .shadow(color: .black, radius: 20, x: 0, y: 0)

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng mờ dần:

 
 Image("ten_hinh_anh")
     .opacity(0.5)
     .animation(.easeIn(duration: 2))

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng chuyển động:

 
 Image("ten_hinh_anh")
     .transition(.slide)
     .animation(.easeInOut(duration: 2))

 

 //TODO:  Hiển thị một hình ảnh và thêm hiệu ứng lật ngược:

 
 Image("ten_hinh_anh")
     .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
     .animation(.easeInOut(duration: 2))

 

 Hy vọng những ví dụ này sẽ giúp bạn nâng cao thiết kế giao diện trong SwiftUI của mình. Nếu bạn cần thêm thông tin hoặc có bất kỳ câu
 */
