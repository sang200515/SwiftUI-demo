//
//  Environment.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation
/*
 # Cách hoạt động của @Environment trong Swift UI

 Trong SwiftUI, @Environment là một property wrapper được sử dụng để truyền các giá trị cấu hình xuống toàn bộ view hierarchy. Điều này giúp cho việc truyền dữ liệu giữa các view trở nên dễ dàng hơn.

 Các giá trị được truyền bởi @Environment được lưu trữ trong một môi trường chia sẻ, được gọi là EnvironmentValues. Các giá trị này có thể được truy cập và sử dụng bởi bất kỳ view nào trong cùng một view hierarchy thông qua việc sử dụng @Environment.

 Các giá trị của @Environment có thể được thiết lập trên một view hoặc một view hierarchy bằng cách sử dụng phương thức environment() trên view đó. Khi một giá trị của @Environment được thiết lập, nó sẽ được truyền xuống tất cả các view con của nó.

 Ví dụ, nếu bạn muốn thiết lập một màu nền chung cho toàn bộ ứng dụng, bạn có thể sử dụng @Environment để truyền giá trị màu đó xuống toàn bộ view hierarchy.

 
 struct ContentView: View {
     @Environment(\\.backgroundColor) var backgroundColor

     var body: some View {
         Text("Hello World!")
             .background(backgroundColor)
     }
 }

 struct App: View {
     var body: some View {
         ContentView()
             .environment(\\.backgroundColor, Color.blue)
     }
 }

 

 Trong ví dụ trên, chúng ta đã sử dụng @Environment để truyền màu nền xuống ContentView. Sau đó, trong App, chúng ta đã thiết lập màu nền là màu xanh lam bằng cách sử dụng phương thức environment().

 Khi ContentView được tạo, màu nền sẽ được lấy từ EnvironmentValues và được sử dụng như một màu nền cho Text.

 Đó là cách hoạt động của @Environment trong SwiftUI. Nó giúp cho việc truyền dữ liệu giữa các view trở nên dễ dàng hơn bằng cách sử dụng một môi trường chia sẻ và @Environment property wrapper.

 Dưới đây là 20 ví dụ về cách sử dụng @Environment trong SwiftUI:

 //TODO:  Thiết lập màu nền cho toàn bộ ứng dụng

 
 struct ContentView: View {
     @Environment(\\.backgroundColor) var backgroundColor

     var body: some View {
         Text("Hello World!")
             .background(backgroundColor)
     }
 }

 struct App: View {
     var body: some View {
         ContentView()
             .environment(\\.backgroundColor, Color.blue)
     }
 }

 

 //TODO:  Thiết lập màu nền cho một view cụ thể

 
 struct ContentView: View {
     @Environment(\\.backgroundColor) var backgroundColor

     var body: some View {
         Text("Hello World!")
             .background(backgroundColor)
     }
 }

 struct DetailView: View {
     @Environment(\\.backgroundColor) var backgroundColor

     var body: some View {
         Text("Detail View")
             .background(backgroundColor)
     }
 }

 struct App: View {
     var body: some View {
         ContentView()
             .environment(\\.backgroundColor, Color.blue)
         DetailView()
             .environment(\\.backgroundColor, Color.red)
     }
 }

 

 //TODO:  Thiết lập font chữ cho toàn bộ ứng dụng

 
 struct ContentView: View {
     @Environment(\\.font) var font

     var body: some View {
         Text("Hello World!")
             .font(font)
     }
 }

 struct App: View {
     var body: some View {
         ContentView()
             .environment(\\.font, Font.system(size: 20))
     }
 }

 

 //TODO:  Thiết lập font chữ cho một view cụ thể

 
 struct ContentView: View {
     @Environment(\\.font) var font

     var body: some View {
         Text("Hello World!")
             .font(font)
     }
 }

 struct DetailView: View {
     @Environment(\\.font) var font

     var body: some View {
         Text("Detail View")
             .font(font)
     }
 }

 struct App: View {
     var body: some View {
         ContentView()
             .environment(\\.font, Font.system(size: 20))
         DetailView()
             .environment(\\.font, Font.system(size: 30))
     }
 }

 

 //TODO:  Thiết lập màu chữ cho toàn bộ ứng dụng

 
 struct ContentView: View {
     @Environment(\\.foregroundColor) var foregroundColor

     var body: some View {
         Text("Hello World!")
             .foregroundColor(foregroundColor)
     }
 }

 struct App: View {
     var body: some View {
         ContentView()
             .environment(\\.foregroundColor, Color.red)
     }
 }

 

 //TODO:  Thiết lập màu chữ cho một view cụ thể

 
 struct ContentView: View {
     @Environment(\\.foregroundColor) var foregroundColor

     var body: some View {
         Text("Hello World!")
             .foregroundColor(foregroundColor)
     }
 }

 struct DetailView: View {
     @Environment(\\.foregroundColor) var foregroundColor

     var body: some View {
         Text("Detail View")
             .foregroundColor(foregroundColor)
     }
 }

 struct App: View {
     var body: some View {
         ContentView()
             .environment(\\.foregroundColor, Color.red)
         DetailView()
             .environment(\\.foregroundColor, Color.blue)
     }
 }

 

 //TODO:  Thiết lập padding cho toàn bộ ứng dụng

 
 struct ContentView: View {
     @Environment(\\.padding) var padding

     var body: some View {
         Text("Hello World!")
             .padding(padding)
     }
 }

 struct App: View {
     var body: some View {
         ContentView()
             .environment(\\.padding, EdgeInsets(top: 50, leading: 20, bottom: 50, trailing: 20))
     }
 }

 

 //TODO:  Thiết lập padding cho một view cụ thể

 
 struct ContentView: View {
     @Environment(\\.padding) var padding

     var body: some View {
         Text("Hello World!")
             .padding(padding)
     }
 }

 struct DetailView: View {
     @Environment(\\.padding) var padding

     var body: some View {
         Text("Detail View")
             .padding(padding)
     }
 }

 struct App: View {
     var body: some View {
         ContentView()
             .environment(\\.padding, EdgeInsets(top: 50, leading: 20, bottom: 50, trailing: 20))
         DetailView()
             .environment(\\.padding, EdgeInsets(top: 20, leading: 10, bottom: 20, trailing: 10))
     }
 }

 

 //TODO:  Thiết lập độ trong suốt cho toàn bộ ứng dụng

 
 struct ContentView: View {
     @Environment(\\.opacity) var opacity

     var body: some View {
         Text("Hello World!")
             .opacity(opacity)
     }
 }

 struct App: View {
     var body: some View {
         ContentView()
             .environment(\\.opacity, 0.5)
     }
 }

 

 //TODO:  Thiết lập độ trong suốt cho một view cụ thể

 
 struct ContentView: View {
     @Environment(\\.opacity) var opacity

     var body: some View {
         Text("Hello World!")
             .opacity(opacity)
     }
 }

 struct DetailView: View {
     @Environment(\\.opacity) var opacity

     var body: some View {
         Text("Detail View")
             .opacity(opacity)
     }
 }

 struct App: View {
     var body: some View {
         ContentView()
             .environment(\\.opacity, 0.5)
         DetailView()
             .environment(\\.opacity, //TODO: 0)
     }
 }

 

 //TODO:  Thiết lập độ rộng cho toàn bộ ứng dụng

 
 struct ContentView: View {
     @Environment(\\.width) var width

     var body: some View {
         Text("Hello World!")
             .frame(width: width)
     }
 }

 struct App: View {
     var body: some View {
         ContentView()
             .environment(\\.width, 300)
     }
 }

 

 //TODO:  Thiết lập độ rộng cho một view cụ thể

 
 struct ContentView: View {
     @Environment(\\.width) var width

     var body: some View {
         Text("Hello World!")
             .frame(width: width)
     }
 }

 struct DetailView: View {
     @Environment(\\.width) var width

     var body: some View {
         Text("Detail View")
             .frame(width: width)
     }
 }

 struct App: View {
     var body: some View {
         ContentView()
             .environment(\\.width, 300)
         DetailView()
             .environment(\\.width, 200)
     }
 }

 

 //TODO:  Thiết lập độ cao cho toàn bộ ứng dụng

 
 struct ContentView: View {
     @Environment(\\.height) var height

     var body: some View {
         Text("Hello World!")
             .frame(height: height)
     }
 }

 struct App: View {
     var body: some View {
         ContentView()
             .environment(\\.height, 200)
     }
 }

 

 //TODO:  Thiết lập độ cao cho một view cụ thể

 
 struct ContentView: View {
     @Environment(\\.height) var height

     var body: some View {
         Text("Hello World!")
             .frame(height: height)
     }
 }

 struct DetailView: View {
     @Environment(\\.height) var height

     var body: some View {
         Text("Detail View")
             .frame(height: height)
     }
 }

 struct App: View {
     var body: some View {
         ContentView()
             .environment(\\.height, 200)
         DetailView()
             .environment(\\.height, 100)
     }
 }

 

 //TODO:  Thiết lập khoảng cách giữa các view cho toàn bộ ứng dụng

 
 struct ContentView: View {
     @Environment(\\.spacing) var spacing

     var body: some View {
         VStack(spacing: spacing) {
             Text("Hello")
             Text("World")
         }
     }
 }

 struct App: View {
     var body: some View {
         ContentView()
             .environment(\\.spacing, 10)
     }
 }

 

 //TODO:  Thiết lập khoảng cách giữa các view cho một view cụ thể

 
 struct ContentView: View {
     @Environment(\\.spacing) var spacing

     var body: some View {
         VStack(spacing: spacing) {
             Text("Hello")
             Text("World")
         }
     }
 }

 struct DetailView: View {
     @Environment(\\.spacing) var spacing

     var body: some View {
         VStack(spacing: spacing) {
             Text("Detail")
             Text("View")
         }
     }
 }

 struct App: View {
     var body: some View {
         ContentView()
             .environment(\\.spacing, 10)
         DetailView()
             .environment(\\.spacing, 20)
     }
 }

 

 //TODO:  Thiết lập độ dày cho toàn bộ ứng dụng

 
 struct ContentView: View {
     @Environment(\\.thickness) var thickness

     var body: some View {
         Text("Hello World!")
             .border(Color.red, width: thickness)
     }
 }

 struct App: View {
     var body: some View {
         ContentView()
             .environment(\\.thickness, 2)
     }
 }

 

 //TODO:  Thiết lập độ dày cho một view cụ thể

 
 struct ContentView: View {
     @Environment(\\.thickness) var thickness

     var body: some View {
         Text("Hello World!")
             .border(Color.red, width: thickness)
     }
 }

 struct DetailView: View {
     @Environment(\\.thickness) var thickness

     var body: some View {
         Text("Detail View")
             .border(Color.blue, width: thickness)
     }
 }

 struct App: View {
     var body: some View {
         ContentView()
             .environment(\\.thickness, 2)
         DetailView()
             .environment(\\.thickness, 4)
     }
 }

 

 //TODO:  Thiết lập độ tròn cho toàn bộ ứng dụng

 
 struct ContentView: View {
     @Environment(\\.cornerRadius) var cornerRadius

     var body: some View {
         Text("Hello World!")
             .cornerRadius(cornerRadius)
     }
 }

 struct App: View {
     var body: some View {
         ContentView()
             .environment(\\.cornerRadius, 10)
     }
 }

 

 //TODO:  Thiết lập độ tròn cho một view cụ thể

 
 struct ContentView: View {
     @Environment(\\.cornerRadius) var cornerRadius

     var body: some View {
         Text("Hello World!")
             .cornerRadius(cornerRadius)
     }
 }

 struct DetailView: View {
     @Environment(\\.cornerRadius) var cornerRadius

     var body: some View {
         Text("Detail View")
             .cornerRadius(cornerRadius)
     }
 }

 struct App: View {
     var body: some View {
         ContentView()
             .environment(\\.cornerRadius, 10)
         DetailView()
             .environment(\\.cornerRadius, 20)
     }
 }

 

 Thêm vào đó, bạn cũng có thể sử dụng @Environment để truyền các giá trị tùy chỉnh của riêng bạn, chẳng hạn như thiết lập một biến Boolean hoặc một chuỗi. Các giá trị này có thể được đọc và sử dụng bởi bất kỳ view nào trong cùng một view hierarchy bằng cách sử dụng @Environment.
 */
