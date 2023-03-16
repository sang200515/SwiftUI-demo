//
//  ZStack.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation
/*
 #

 ZStack là một container trong SwiftUI, cho phép bạn tạo ra một tập hợp các view và chồng chúng lên nhau.

 Để sử dụng ZStack, bạn có thể sử dụng cú pháp sau:

 
 ZStack {
     // Các view được chồng lên nhau ở đây
 }

 

 Các view được thêm vào ZStack sẽ được chồng lên nhau theo thứ tự được xác định bởi thứ tự đưa vào. View đưa vào sau cùng sẽ được đặt lên đỉnh.

 Ví dụ, để tạo ra một hình vuông đỏ nằm trên một hình tròn xanh, bạn có thể sử dụng mã sau:

 
 ZStack {
     Circle()
         .fill(Color.green)
         .frame(width: 100, height: 100)
     Rectangle()
         .fill(Color.red)
         .frame(width: 50, height: 50)
 }

 

 Trong mã trên, hình tròn xanh sẽ được tạo ra bằng lệnh `Circle()` và được đặt đầu tiên trong ZStack. Hình vuông đỏ sẽ được tạo ra bằng lệnh `Rectangle()` và được đặt sau cùng trong ZStack.

 Nếu bạn muốn thay đổi vị trí của các view trong ZStack, bạn có thể sử dụng modifier `offset()` và chỉ định khoảng cách tới phần tử cha của nó. Ví dụ:

 
 ZStack {
     Circle()
         .fill(Color.green)
         .frame(width: 100, height: 100)
         .offset(x: 50, y: 50)
     Rectangle()
         .fill(Color.red)
         .frame(width: 50, height: 50)
 }

 

 Trong ví dụ này, hình tròn xanh sẽ được dịch chuyển đi 50 điểm theo trục x và 50 điểm theo trục y.

 Hy vọng bài viết này giúp bạn hiểu rõ hơn về cách sử dụng ZStack để tạo các thành phần chồng lên nhau trên màn hình trong SwiftUI.

 Khi sử dụng ZStack, cần tránh đặt các view quá gần nhau trong khi không sử dụng modifier như `offset()` để điều chỉnh vị trí. Điều này có thể dẫn đến việc các view chồng lên nhau quá đậm, gây khó khăn cho người dùng trong việc phân biệt giữa chúng.

 Ngoài ra, cần lưu ý rằng khi sử dụng ZStack, các view sẽ được chồng lên nhau theo thứ tự đưa vào, vì vậy nếu bạn muốn đảo ngược thứ tự chồng của các view, bạn cần phải thay đổi thứ tự đưa chúng vào trong mã.

 Dưới đây là 20 ví dụ nâng cao về cách sử dụng ZStack trong SwiftUI:

 //TODO:  Tạo một hình chữ nhật với một hình tròn nằm bên trong. Hình tròn phải nằm chính giữa hình chữ nhật.

 
 ZStack {
     Rectangle()
         .fill(Color.blue)
         .frame(width: 200, height: 100)
     Circle()
         .fill(Color.white)
         .frame(width: 100, height: 100)
 }

 

 //TODO:  Tạo một hình dạng tùy chỉnh và chồng lên một hình tròn.

 
 ZStack {
     CustomShape()
         .fill(Color.blue)
         .frame(width: 200, height: 100)
     Circle()
         .fill(Color.white)
         .frame(width: 100, height: 100)
 }

 

 //TODO:  Tạo một hình chữ nhật với một văn bản nằm bên trong.

 
 ZStack {
     Rectangle()
         .fill(Color.blue)
         .frame(width: 200, height: 100)
     Text("Hello, world!")
         .foregroundColor(.white)
 }

 

 //TODO:  Tạo một hình tròn với một hình chữ nhật nằm bên trong.

 
 ZStack {
     Circle()
         .fill(Color.blue)
         .frame(width: 200, height: 200)
     Rectangle()
         .fill(Color.white)
         .frame(width: 100, height: 100)
 }

 

 //TODO:  Tạo một hình tam giác với một hình tròn nằm bên trong.

 
 ZStack {
     Triangle()
         .fill(Color.blue)
         .frame(width: 200, height: 200)
     Circle()
         .fill(Color.white)
         .frame(width: 100, height: 100)
 }

 

 //TODO:  Tạo một hình vuông với một hình tròn nằm bên trong và một văn bản nằm bên trong hình tròn.

 
 ZStack {
     Square()
         .fill(Color.blue)
         .frame(width: 200, height: 200)
     Circle()
         .fill(Color.white)
         .frame(width: 100, height: 100)
     Text("Hello, world!")
         .foregroundColor(.black)
 }

 

 //TODO:  Tạo một hình chữ nhật với một hình tam giác nằm trong đó.

 
 ZStack {
     Rectangle()
         .fill(Color.blue)
         .frame(width: 200, height: 100)
     Triangle()
         .fill(Color.white)
         .frame(width: 50, height: 50)
 }

 

 //TODO:  Tạo một hình tròn với một hình tam giác nằm trong đó.

 
 ZStack {
     Circle()
         .fill(Color.blue)
         .frame(width: 200, height: 200)
     Triangle()
         .fill(Color.white)
         .frame(width: 50, height: 50)
 }

 

 //TODO:  Tạo một hình tam giác với một hình chữ nhật nằm bên trong và một văn bản nằm bên trong hình chữ nhật.

 
 ZStack {
     Triangle()
         .fill(Color.blue)
         .frame(width: 200, height: 200)
     Rectangle()
         .fill(Color.white)
         .frame(width: 100, height: 50)
     Text("Hello, world!")
         .foregroundColor(.black)
 }

 

 //TODO:  Tạo một hình vuông với một hình tam giác nằm trong đó và một văn bản nằm bên trong hình tam giác.

 
 ZStack {
     Square()
         .fill(Color.blue)
         .frame(width: 200, height: 200)
     Triangle()
         .fill(Color.white)
         .frame(width: 100, height: 100)
     Text("Hello, world!")
         .foregroundColor(.black)
 }

 

 //TODO:  Tạo một hình chữ nhật với một hình vuông nằm bên trong và một văn bản nằm bên trong hình vuông.

 
 ZStack {
     Rectangle()
         .fill(Color.blue)
         .frame(width: 200, height: 100)
     Square()
         .fill(Color.white)
         .frame(width: 50, height: 50)
     Text("Hello, world!")
         .foregroundColor(.black)
 }

 

 //TODO:  Tạo một hình tròn với một hình vuông nằm bên trong và một văn bản nằm bên trong hình vuông.

 
 ZStack {
     Circle()
         .fill(Color.blue)
         .frame(width: 200, height: 200)
     Square()
         .fill(Color.white)
         .frame(width: 50, height: 50)
     Text("Hello, world!")
         .foregroundColor(.black)
 }

 

 //TODO:  Tạo một hình tam giác với một hình vuông nằm bên trong và một văn bản nằm bên trong hình vuông.

 
 ZStack {
     Triangle()
         .fill(Color.blue)
         .frame(width: 200, height: 200)
     Square()
         .fill(Color.white)
         .frame(width: 50, height: 50)
     Text("Hello, world!")
         .foregroundColor(.black)
 }

 

 //TODO:  Tạo một hình vuông với một hình vuông nằm bên trong và một văn bản nằm bên trong hình vuông.

 
 ZStack {
     Square()
         .fill(Color.blue)
         .frame(width: 200, height: 200)
     Square()
         .fill(Color.white)
         .frame(width: 50, height: 50)
     Text("Hello, world!")
         .foregroundColor(.black)
 }

 

 //TODO:  Tạo một hình chữ nhật với một hình chữ nhật nằm bên trong và một văn bản nằm bên trong hình chữ nhật.

 
 ZStack {
     Rectangle()
         .fill(Color.blue)
         .frame(width: 200, height: 100)
     Rectangle()
         .fill(Color.white)
         .frame(width: 50, height: 25)
     Text("Hello, world!")
         .foregroundColor(.black)
 }

 

 //TODO:  Tạo một hình tròn với một hình chữ nhật nằm bên trong và một văn bản nằm bên trong hình chữ nhật.

 
 ZStack {
     Circle()
         .fill(Color.blue)
         .frame(width: 200, height: 200)
     Rectangle()
         .fill(Color.white)
         .frame(width: 50, height: 25)
     Text("Hello, world!")
         .foregroundColor(.black)
 }

 

 //TODO:  Tạo một hình tam giác với một hình chữ nhật nằm bên trong và một văn bản nằm bên trong hình chữ nhật.

 
 ZStack {
     Triangle()
         .fill(Color.blue)
         .frame(width: 200, height: 200)
     Rectangle()
         .fill(Color.white)
         .frame(width: 50, height: 25)
     Text("Hello, world!")
         .foregroundColor(.black)
 }

 

 //TODO:  Tạo một hình vuông với một hình chữ nhật nằm bên trong và một văn bản nằm bên trong hình chữ nhật.

 
 ZStack {
     Square()
         .fill(Color.blue)
         .frame(width: 200, height: 200)
     Rectangle()
         .fill(Color.white)
         .frame(width: 50, height: 25)
     Text("Hello, world!")
         .foregroundColor(.black)
 }

 

 //TODO:  Tạo một hình chữ nhật với một hình vuông nằm bên trong và một văn bản nằm bên trong hình vuông.

 
 ZStack {
     Rectangle()
         .fill(Color.blue)
         .frame(width: 200, height: 100)
     Square()
         .fill(Color.white)
         .frame(width: 25, height: 25)
     Text("Hello, world!")
         .foregroundColor(.black)
 }

 

 //TODO:  Tạo một hình tròn với một hình vuông nằm bên trong và một văn bản nằm bên trong hình vuông.

 
 ZStack {
     Circle()
         .fill(Color.blue)
         .frame(width: 200, height: 200)
     Square()
         .fill(Color.white)
         .frame(width: 25, height: 25)
     Text("Hello, world!")
         .foregroundColor(.black)
 }

 

 Hy vọng rằng các ví dụ trên giúp bạn hiểu thêm về cách sử dụng ZStack trong SwiftUI và tạo ra các thành phần giao diện chồng lên nhau một cách linh hoạt và đa dạng.
 */
