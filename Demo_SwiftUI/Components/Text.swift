//
//  Text.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation
 /*
  SwiftUI cung cấp một loạt các phương pháp để hiển thị văn bản trong các ứng dụng của bạn. Bạn có thể sử dụng `Text` để hiển thị các chuỗi đơn giản hoặc sử dụng các thuộc tính để tùy chỉnh kiểu, độ dài và màu sắc của văn bản. Dưới đây là một số ví dụ về cách sử dụng `Text` trong SwiftUI.

  ## Ví dụ 1: Hiển thị chuỗi văn bản đơn giản

  
  Text("Chào mừng đến với SwiftUI!")

  

  Đoạn mã trên sẽ hiển thị chuỗi `Chào mừng đến với SwiftUI!` trong ứng dụng của bạn.

  ## Ví dụ 2: Sử dụng thuộc tính để tùy chỉnh kiểu và màu sắc của văn bản

  
  Text("Chào mừng đến với SwiftUI!")
      .font(.title)
      .foregroundColor(.blue)

  

  Đoạn mã trên sẽ hiển thị chuỗi `Chào mừng đến với SwiftUI!` với kiểu chữ là `title` và màu sắc là màu xanh lá cây.

  ## Ví dụ 3: Thêm độ dài tùy chỉnh cho văn bản

  
  Text("Chào mừng đến với SwiftUI!")
      .frame(width: 200, height: 50, alignment: .center)

  

  Đoạn mã trên sẽ hiển thị chuỗi `Chào mừng đến với SwiftUI!` với chiều rộng là 200 và chiều cao là 50.

  ## Ví dụ 4: Sử dụng nhiều thuộc tính để tùy chỉnh văn bản

  
  Text("Chào mừng đến với SwiftUI!")
      .font(.headline)
      .fontWeight(.bold)
      .foregroundColor(.white)
      .padding()
      .background(Color.blue)

  

  Đoạn mã trên sẽ hiển thị chuỗi `Chào mừng đến với SwiftUI!` với kiểu chữ là `headline`, độ đậm là `bold`, màu sắc là màu trắng, với khoảng cách đệm và nền là màu xanh. Sẽ

  ## Ví dụ 5: Sử dụng định dạng văn bản

  
  Text("Chào mừng đến với SwiftUI!")
      .italic()
      .underline()

  

  Đoạn mã trên sẽ hiển thị chuỗi `Chào mừng đến với SwiftUI!` với định dạng nghiêng và gạch chân.

  ## Ví dụ 6: Sử dụng thuộc tính `multilineTextAlignment` để canh chỉnh văn bản

  
  Text("Đây là một ví dụ về cách sử dụng thuộc tính `multilineTextAlignment` để canh chỉnh văn bản.")
      .multilineTextAlignment(.center)

  

  Đoạn mã trên sẽ hiển thị chuỗi văn bản dài trong đó `multilineTextAlignment` được sử dụng để canh giữa văn bản.

  Đó là một số ví dụ về cách sử dụng `Text` trong SwiftUI. Bạn có thể thực hiện các tùy chỉnh khác bằng cách sử dụng các thuộc tính khác nhau để tạo ra văn bản phù hợp với nhu cầu của ứng dụng của bạn.

  Dưới đây là 20 ví dụ về thiết kế giao diện cho văn bản trong SwiftUI:

  //TODO:  Hiển thị văn bản với kiểu chữ tùy chỉnh:

  
  Text("Chào mừng đến với SwiftUI!")
      .font(.custom("Helvetica Neue", size: 20))

  

  //TODO:  Hiển thị văn bản với nhiều dòng:

  
  Text("Đây là một đoạn văn bản dài hơn một dòng, với nhiều từ và câu.")
      .lineLimit(nil)
      .multilineTextAlignment(.leading)

  

  //TODO:  Hiển thị văn bản với khoảng cách đệm tùy chỉnh:

  
  Text("Chào mừng đến với SwiftUI!")
      .padding(10)

  

  //TODO:  Hiển thị văn bản với màu nền tùy chỉnh:

  
  Text("Chào mừng đến với SwiftUI!")
      .background(Color.yellow)

  

  //TODO:  Hiển thị văn bản với khoảng cách đệm và màu nền tùy chỉnh:

  
  Text("Chào mừng đến với SwiftUI!")
      .padding(10)
      .background(Color.yellow)

  

  //TODO:  Hiển thị văn bản với độ đậm tùy chỉnh:

  
  Text("Chào mừng đến với SwiftUI!")
      .fontWeight(.semibold)

  

  //TODO:  Hiển thị văn bản với nghiêng tùy chỉnh:

  
  Text("Chào mừng đến với SwiftUI!")
      .italic()

  

  //TODO:  Hiển thị văn bản với gạch chân tùy chỉnh:

  
  Text("Chào mừng đến với SwiftUI!")
      .underline()

  

  //TODO:  Hiển thị văn bản với canh chỉnh trái:

  
  Text("Chào mừng đến với SwiftUI!")
      .multilineTextAlignment(.leading)

  

  //TODO:  Hiển thị văn bản với canh chỉnh phải:

  
  Text("Chào mừng đến với SwiftUI!")
      .multilineTextAlignment(.trailing)

  

  //TODO:  Hiển thị văn bản với canh giữa:

  
  Text("Chào mừng đến với SwiftUI!")
      .multilineTextAlignment(.center)

  

  //TODO:  Hiển thị văn bản với gạch chân và canh chỉnh trái:

  
  Text("Chào mừng đến với SwiftUI!")
      .underline()
      .multilineTextAlignment(.leading)

  

  //TODO:  Hiển thị văn bản với độ đậm và canh chỉnh phải:

  
  Text("Chào mừng đến với SwiftUI!")
      .fontWeight(.semibold)
      .multilineTextAlignment(.trailing)

  

  //TODO:  Hiển thị văn bản với đường viền tùy chỉnh:

  
  Text("Chào mừng đến với SwiftUI!")
      .border(Color.gray, width: 2)

  

  //TODO:  Hiển thị văn bản với độ nghiêng tùy chỉnh:

  
  Text("Chào mừng đến với SwiftUI!")
      .rotationEffect(.degrees(45))

  

  //TODO:  Hiển thị văn bản với hiệu ứng động:

  
  Text("Chào mừng đến với SwiftUI!")
      .scaleEffect(2.0)

  

  //TODO:  Hiển thị văn bản với hiệu ứng động và màu nền tùy chỉnh:

  
  Text("Chào mừng đến với SwiftUI!")
      .scaleEffect(2.0)
      .background(Color.yellow)

  

  //TODO:  Hiển thị văn bản với màu nền gradient:

  
  Text("Chào mừng đến với SwiftUI!")
      .padding(10)
      .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .leading, endPoint: .trailing))

  

  //TODO:  Hiển thị văn bản với hiệu ứng động và độ nghiêng tùy chỉnh:

  
  Text("Chào mừng đến với SwiftUI!")
      .scaleEffect(2.0)
      .rotationEffect(.degrees(45))

  

  //TODO:  Hiển thị văn bản với hiệu ứng động, màu nền tùy chỉnh và độ nghiêng tùy chỉnh:

  
  Text("Chào mừng đến với SwiftUI!")
      .scaleEffect(2.0)
      .rotationEffect(.degrees(45))
      .background(Color.yellow)

  

  */
