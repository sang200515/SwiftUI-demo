//
//  HStack.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation
/*
 #

 # Hstack trong Swift UI: 20 Ví Dụ Nâng Cao

 Hstack là một trong những layout cơ bản trong SwiftUI. Nó cho phép bạn xếp các thành phần ngang hàng với nhau. Dưới đây là 20 ví dụ nâng cao về cách sử dụng Hstack trong SwiftUI.

 //TODO:  **Tạo một Hstack đơn giản:**

 
 HStack {
     Text("Hello")
     Text("World")
 }

 

 //TODO:  **Thêm padding cho Hstack:**

 
 HStack(spacing: 20) {
     Text("Hello")
     Text("World")
 }.padding()

 

 //TODO:  **Sử dụng alignment trong Hstack:**

 
 HStack(alignment: .top) {
     Text("Hello")
     Text("World")
 }

 

 //TODO:  **Sử dụng frame để tùy chỉnh kích thước của Hstack:**

 
 HStack {
     Text("Hello")
     Text("World")
 }.frame(width: 200, height: 50)

 

 //TODO:  **Sử dụng background trong Hstack:**

 
 HStack {
     Text("Hello")
     Text("World")
 }.background(Color.gray)

 

 //TODO:  **Sử dụng foregroundColor trong Hstack:**

 
 HStack {
     Text("Hello")
     Text("World")
 }.foregroundColor(Color.white)

 

 //TODO:  **Sử dụng overlay trong Hstack:**

 
 HStack {
     Text("Hello")
     Text("World")
 }.overlay(
     RoundedRectangle(cornerRadius: 10)
         .stroke(Color.blue, lineWidth: 2)
 )

 

 //TODO:  **Sử dụng shadow trong Hstack:**

 
 HStack {
     Text("Hello")
     Text("World")
 }.shadow(color: Color.gray, radius: 2)

 

 //TODO:  **Sử dụng clipShape trong Hstack:**

 
 HStack {
     Text("Hello")
     Text("World")
 }.clipShape(Circle())

 

 //TODO:  **Sử dụng spacing để tùy chỉnh khoảng cách giữa các thành phần trong Hstack:**

 
 HStack(spacing: 50) {
     Text("Hello")
     Text("World")
     Text("SwiftUI")
 }

 

 //TODO:  **Sử dụng font trong Hstack:**

 
 HStack {
     Text("Hello")
         .font(.largeTitle)
     Text("World")
         .font(.headline)
 }

 

 //TODO:  **Sử dụng multiline text trong Hstack:**

 
 HStack {
     Text("Hello\\nSwiftUI")
 }

 

 //TODO:  **Sử dụng image trong Hstack:**

 
 HStack {
     Image(systemName: "star.fill")
     Text("Hello")
 }

 

 //TODO:  **Sử dụng button trong Hstack:**

 
 HStack {
     Button(action: {
         print("Button tapped")
     }) {
         Text("Tap me")
     }
     Text("Hello")
 }

 

 //TODO:  **Sử dụng TextField trong Hstack:**

 
 HStack {
     TextField("Enter your name", text: $name)
     Text("Hello, \\(name)!")
 }

 

 //TODO:  **Sử dụng Toggle trong Hstack:**

 
 HStack {
     Toggle("Toggle me", isOn: $isToggled)
     Text("Hello")
 }

 

 //TODO:  **Sử dụng Stepper trong Hstack:**

 
 HStack {
     Stepper("Stepper", value: $stepperValue, in: //TODO: ..10)
     Text("Value: \\(stepperValue)")
 }

 

 //TODO:  **Sử dụng Picker trong Hstack:**

 
 HStack {
     Picker("Picker", selection: $selectedOption) {
         Text("Option 1").tag(1)
         Text("Option 2").tag(2)
         Text("Option 3").tag(3)
     }
     Text("Selected option: \\(selectedOption)")
 }

 

 //TODO:  **Sử dụng ForEach trong Hstack:**

 
 HStack {
     ForEach(items, id: \\.self) { item in
         Text(item)
     }
 }

 

 //TODO:  **Sử dụng VStack chứa Hstack:**

 
 VStack {
     HStack {
         Text("Hello")
         Text("World")
     }
     HStack {
         Text("Swift")
         Text("UI")
     }
 }

 

 Đó là 20 ví dụ nâng cao về cách sử dụng Hstack trong SwiftUI. Hy vọng rằng những ví dụ này sẽ giúp bạn hiểu rõ hơn về cách sử dụng Hstack trong SwiftUI.

 Tiếp tục 20 ví dụ nữa về cách sử dụng HStack trong SwiftUI:

 //TODO:  **Sử dụng ScrollView trong HStack:**

 
 HStack {
     ScrollView {
         Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt justo et mi elementum, eu convallis massa tincidunt. Fusce fringilla, odio vitae volutpat rutrum, urna ligula luctus turpis, id lobortis arcu nisl vel est. Vivamus auctor elit vel elit scelerisque, at gravida nibh sodales. Sed ac tincidunt turpis. Sed ut porttitor lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec non enim at ex bibendum vestibulum eget vel mi. Phasellus eget laoreet lectus, vel pulvinar nisl. Nunc euismod consequat erat, quis tincidunt enim dictum in. Cras suscipit dolor eget est malesuada, quis elementum lorem gravida. Duis at leo vel sapien facilisis ultrices. Praesent id lectus mauris.")
     }
 }

 

 //TODO:  **Sử dụng Divider để tạo đường kẻ trong Hstack:**

 
 HStack {
     Text("Hello")
     Divider()
     Text("World")
 }

 

 //TODO:  **Sử dụng Group để nhóm các thành phần trong Hstack:**

 
 HStack {
     Group {
         Text("Hello")
         Text("World")
     }
     Group {
         Text("Swift")
         Text("UI")
     }
 }

 

 //TODO:  **Sử dụng Spacer để tạo khoảng cách giữa các thành phần trong Hstack:**

 
 HStack {
     Text("Hello")
     Spacer()
     Text("World")
 }

 

 //TODO:  **Sử dụng conditional statement trong Hstack:**

 
 HStack {
     if isLoggedIn {
         Text("Welcome back")
     } else {
         Text("Please log in")
     }
 }

 

 //TODO:  **Sử dụng colorScheme để tùy chỉnh màu sắc trong Hstack:**

 
 HStack {
     Text("Hello")
     Text("World")
 }.colorScheme(.dark)

 

 //TODO:  **Sử dụng zIndex để tùy chỉnh độ sâu trong Hstack:**

 
 HStack {
     Text("Hello")
         .zIndex(1)
     Text("World")
         .zIndex(0)
 }

 

 //TODO:  **Sử dụng transition để thêm animation trong Hstack:**

 
 HStack {
     Text("Hello")
     Text("World")
 }.transition(.scale)

 

 //TODO:  **Sử dụng animation để thêm animation trong Hstack:**

 
 HStack {
     Text("Hello")
     Text("World")
 }.animation(.easeInOut)

 

 //TODO:  **Sử dụng onAppear để thực thi hành động khi Hstack xuất hiện:**

 
 HStack {
     Text("Hello")
     Text("World")
 }.onAppear {
     print("HStack appeared")
 }

 

 Hy vọng những ví dụ này sẽ giúp bạn hiểu rõ hơn về cách sử dụng Hstack trong SwiftUI.

 */
