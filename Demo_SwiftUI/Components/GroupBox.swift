//
//  GroupBox.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation
/*
 # 20 ví dụ về cách kết hợp GroupBox và các thành phần khác trong SwiftUI

 SwiftUI là một framework được Apple giới thiệu trong năm 2019, dùng để phát triển ứng dụng cho các thiết bị của họ như iPhone, iPad, Mac và Apple Watch. GroupBox là một trong những thành phần của SwiftUI, được sử dụng để tạo ra các nhóm các thành phần tương tự như một form.

 Dưới đây là 20 ví dụ về cách kết hợp GroupBox và các thành phần khác trong SwiftUI:

 ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/10afff55-4f13-4edd-bf2e-50bad851b5e9/Untitled.png)

 //TODO:  Tạo một GroupBox với một Text component

 
 GroupBox {
     Text("Hello, World!")
 }

 

 //TODO:  Tạo một GroupBox với một HStack component

 
 GroupBox {
     HStack {
         Text("First Name:")
         TextField("Enter your first name", text: $firstName)
     }
 }

 

 //TODO:  Tạo một GroupBox với một VStack component

 
 GroupBox {
     VStack {
         Text("Personal Information")
         HStack {
             Text("First Name:")
             TextField("Enter your first name", text: $firstName)
         }
         HStack {
             Text("Last Name:")
             TextField("Enter your last name", text: $lastName)
         }
     }
 }

 

 //TODO:  Tạo một GroupBox với một Image component

 
 GroupBox {
     Image(systemName: "person.circle.fill")
         .font(.system(size: 100))
 }

 

 //TODO:  Tạo một GroupBox với một Button component

 
 GroupBox {
     Button(action: {
         // Do something when button is tapped
     }, label: {
         Text("Tap me!")
     })
 }

 

 //TODO:  Tạo một GroupBox với một NavigationLink component

 
 GroupBox {
     NavigationLink(destination: DetailView()) {
         Text("Go to detail view")
     }
 }

 

 //TODO:  Tạo một GroupBox với một Picker component

 
 GroupBox {
     Picker(selection: $selectedFruit, label: Text("Favorite Fruit")) {
         Text("Apple").tag("Apple")
         Text("Banana").tag("Banana")
         Text("Orange").tag("Orange")
     }
 }

 

 //TODO:  Tạo một GroupBox với một Toggle component

 
 GroupBox {
     Toggle("Enable Notifications", isOn: $enableNotifications)
 }

 

 //TODO:  Tạo một GroupBox với một Stepper component

 
 GroupBox {
     Stepper("Number of Guests: \\(numberOfGuests)", value: $numberOfGuests, in: //TODO: ..10)
 }

 

 //TODO:  Tạo một GroupBox với một DatePicker component

 
 GroupBox {
     DatePicker("Date of Birth", selection: $dateOfBirth, displayedComponents: .date)
 }

 

 //TODO:  Tạo một GroupBox với một Slider component

 
 GroupBox {
     Slider(value: $sliderValue, in: 0...100, step: //TODO: 0)
 }

 

 //TODO:  Tạo một GroupBox với một ForEach component

 
 GroupBox {
     ForEach(items) { item in
         Text(item.title)
     }
 }

 

 //TODO:  Tạo một GroupBox với một List component

 
 GroupBox {
     List(items) { item in
         Text(item.title)
     }
 }

 

 //TODO:  Tạo một GroupBox với một ScrollView component

 
 GroupBox {
     ScrollView {
         Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec velit euismod, blandit mauris eu, bibendum tellus. Nullam sodales velit vel arcu laoreet, at dignissim nibh hendrerit. Ut sodales ultrices mi. Suspendisse potenti. Sed euismod metus non arcu tincidunt, in eleifend arcu faucibus. Ut sed turpis nisi.")
     }
 }

 

 //TODO:  Tạo một GroupBox với một TabView component

 
 GroupBox {
     TabView {
         Text("First Tab")
             .tabItem {
                 Image(systemName: "//TODO: circle")
                 Text("First")
             }
         Text("Second Tab")
             .tabItem {
                 Image(systemName: "2.circle")
                 Text("Second")
             }
     }
 }

 

 //TODO:  Tạo một GroupBox với một MapView component

 
 GroupBox {
     MapView(region: $region, annotations: annotations)
         .frame(height: 200)
 }

 

 //TODO:  Tạo một GroupBox với một VideoPlayer component

 
 GroupBox {
     VideoPlayer(player: AVPlayer(url: videoURL))
         .frame(height: 300)
 }

 

 //TODO:  Tạo một GroupBox với một WebView component

 
 GroupBox {
     WebView(url: URL(string: "<https://www.google.com>")!)
         .frame(height: 300)
 }

 

 //TODO:  Tạo một GroupBox với một CameraView component

 
 GroupBox {
     CameraView()
         .frame(height: 300)
 }

 

 //TODO:  Tạo một GroupBox với một BarcodeScannerView component

 
 GroupBox {
     BarcodeScannerView(codeTypes: [.qr], simulatedData: "Hello, World!")
         .frame(height: 300)
 }

 

 Đó là 20 ví dụ về cách kết hợp GroupBox và các thành phần khác trong SwiftUI. Hy vọng bạn có thể áp dụng các ví dụ này vào các ứng dụng của mình để tạo ra giao diện người dùng tốt hơn.
 */
