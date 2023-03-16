//
//  Divider.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation
/*
 #

 ## Tiếp tục 20 ví dụ nữa về cách sử dụng Divider trong SwiftUI

 Dưới đây là 20 ví dụ khác về cách sử dụng `Divider` trong SwiftUI:

 ### 1//TODO:  Tạo đường kẻ dọc với `frame`

 
 HStack {
     Text("Nội dung 1")
     Divider()
         .frame(height: 50)
     Text("Nội dung 2")
 }

 

 ### 12. Tạo đường kẻ ngang với chiều rộng tùy chỉnh

 
 Divider()
     .frame(width: 200)

 

 ### 13. Tạo đường kẻ ngang với chiều cao tùy chỉnh

 
 Divider()
     .frame(height: 10)

 

 ### 14. Sử dụng với `ForEach` để tạo các đường kẻ ngang

 
 VStack {
     ForEach(0..<5) { index in
         Text("Mục \\(index)")
         Divider()
     }
 }

 

 ### 15. Tạo đường kẻ ngang với chiều rộng phù hợp với nội dung

 
 HStack {
     Text("Nội dung 1")
     Divider()
         .frame(height: 20)
     Text("Nội dung 2")
 }
 .padding(.horizontal)

 

 ### 16. Tạo đường kẻ ngang với chiều rộng phù hợp với màn hình

 
 Divider()
     .frame(maxWidth: .infinity)

 

 ### 17. Tạo đường kẻ ngang với chiều rộng phù hợp với nội dung của `List`

 
 List {
     Text("Mục 1")
     Divider()
         .padding(.leading, 20)
     Text("Mục 2")
 }

 

 ### 18. Tạo đường kẻ ngang với độ dày thay đổi

 
 VStack {
     Divider()
         .thickness(1)
     Divider()
         .thickness(2)
     Divider()
         .thickness(3)
 }

 

 ### 19. Tạo đường kẻ ngang với độ dài phù hợp với nội dung

 
 HStack {
     Text("Nội dung 1")
     Divider()
         .frame(height: nil)
     Text("Nội dung 2")
 }

 

 ### 20. Tạo đường kẻ ngang với độ dày phù hợp với nội dung

 
 HStack {
     Text("Nội dung 1")
     Divider()
         .frame(width: nil)
     Text("Nội dung 2")
 }

 

 ### 2//TODO:  Sử dụng với `NavigationView` để tạo đường kẻ ngang trong `Toolbar`

 
 NavigationView {
     Text("Nội dung")
         .toolbar {
             ToolbarItem(placement: .navigationBarTrailing) {
                 Button("Thêm") {
                     // Xử lý sự kiện
                 }
             }
             ToolbarItem(placement: .navigationBarTrailing) {
                 Divider()
             }
         }
 }

 

 ### 22. Sử dụng với `ScrollView` để tạo các đường kẻ ngang

 
 ScrollView {
     VStack {
         ForEach(0..<10) { index in
             Text("Mục \\(index)")
             Divider()
         }
     }
 }

 

 ### 23. Tạo đường kẻ ngang với màu gradient

 
 Divider()
     .background(LinearGradient(
         gradient: Gradient(colors: [Color.red, Color.blue]),
         startPoint: .leading,
         endPoint: .trailing
     ))

 

 ### 24. Tạo đường kẻ ngang với hình dạng tùy chỉnh

 
 Divider()
     .background(
         Capsule()
             .stroke(Color.blue, lineWidth: 2)
     )

 

 ### 25. Tạo đường kẻ ngang với kiểu đường kẻ tùy chỉnh

 
 Divider()
     .background(
         Rectangle()
             .stroke(style: StrokeStyle(
                 lineWidth: 2,
                 dash: [5]
             ))
     )

 

 ### 26. Tạo đường kẻ ngang với độ mờ tùy chỉnh

 
 Divider()
     .opacity(0.5)

 

 ### 27. Tạo đường kẻ ngang với độ dài tùy chỉnh

 
 Divider()
     .frame(width: 100, height: 2)

 

 ### 28. Tạo đường kẻ ngang với vị trí tùy chỉnh

 
 HStack {
     Divider()
         .frame(height: 20)
     Text("Nội dung")
     Divider()
         .frame(height: 20)
 }

 

 ### 29. Tạo đường kẻ ngang với góc bo tròn

 
 Divider()
     .background(
         RoundedRectangle(cornerRadius: 5)
             .stroke(Color.blue, lineWidth: 2)
     )

 

 ### 30. Tạo đường kẻ ngang bằng cách lặp lại các hình dạng
 */
