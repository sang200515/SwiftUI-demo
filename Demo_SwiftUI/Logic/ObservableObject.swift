//
//  ObservableObject.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation
/*
 # Cách hoạt động của ObservableObject trong SwiftUI

 SwiftUI là một framework mới của Apple giúp tạo giao diện người dùng dễ dàng hơn trên các thiết bị của họ. Với SwiftUI, chúng ta có thể sử dụng ObservableObject để theo dõi các thay đổi trong các thuộc tính của đối tượng và cập nhật lại giao diện người dùng.

 ObservableObject là một protocol trong SwiftUI, cho phép chúng ta theo dõi các thay đổi trong các thuộc tính của đối tượng. Khi một thuộc tính được thay đổi, SwiftUI sẽ cập nhật lại giao diện người dùng tự động.

 Để sử dụng ObservableObject trong SwiftUI, chúng ta cần thực hiện các bước sau:

 //TODO:  Tạo một class hoặc struct và áp dụng protocol ObservableObject

 
     class MyObject: ObservableObject {
         @Published var myProperty: String = "Hello, World!"
     }

 

 //TODO:  Khai báo các thuộc tính của đối tượng và đánh dấu chúng với @Published để theo dõi các thay đổi
 2. Trong SwiftUI View, chúng ta có thể sử dụng @ObservedObject để theo dõi các thay đổi trong đối tượng.

 
     struct MyView: View {
         @ObservedObject var myObject = MyObject()

         var body: some View {
             Text(myObject.myProperty)
         }
     }

 

 //TODO:  Khi giá trị của thuộc tính trong đối tượng thay đổi, SwiftUI sẽ cập nhật lại giao diện người dùng tự động.

 Chúng ta có thể sử dụng ObservableObject để theo dõi các thay đổi trong các thuộc tính của đối tượng và cập nhật lại giao diện người dùng một cách dễ dàng và hiệu quả hơn trong SwiftUI.

 Ví dụ về cách áp dụng ObservableObject trong SwiftUI:

 
     class User: ObservableObject {
         @Published var name: String
         @Published var age: Int

         init(name: String, age: Int) {
             self.name = name
             self.age = age
         }
     }

     struct UserView: View {
         @ObservedObject var user: User

         var body: some View {
             VStack {
                 Text(user.name)
                 Text("\\(user.age)")
             }
         }
     }

 

 Trong ví dụ này, chúng ta đã tạo ra một class User và áp dụng protocol ObservableObject vào nó. Chúng ta đã đánh dấu các thuộc tính name và age với @Published để theo dõi các thay đổi.

 Trong SwiftUI View, chúng ta sử dụng @ObservedObject để theo dõi các thay đổi trong đối tượng User. Khi giá trị của thuộc tính trong đối tượng User thay đổi, SwiftUI sẽ cập nhật lại giao diện người dùng tự động. Trong ví dụ này, chúng ta hiển thị tên và tuổi của User trong một VStack.
 */
