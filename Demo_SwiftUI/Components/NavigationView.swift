//
//  NavigationView.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation
/*
 #

 Ở trong Swift UI, bạn có thể sử dụng NavigationView để tạo một giao diện điều hướng cho ứng dụng của mình. NavigationView là một container view cho phép bạn thêm các view như Text, Button, hay List và đặt chúng vào trong một navigation hierarchy.

 Để bắt đầu sử dụng NavigationView, bạn cần khai báo một NavigationView trong body của view hierarchy của bạn. Ví dụ:

 
 NavigationView {
     // add views here
 }

 

 Sau đó, bạn có thể thêm các view bên trong NavigationView bằng cách sử dụng các modifier như NavigationLink, List, hay Text. Ví dụ:

 swift
 NavigationView {
     List {
         NavigationLink(destination: Text("Hello, World!")) {
             Text("Tap me!")
         }
     }
     .navigationBarTitle("My Navigation View")
 }

 

 Trong ví dụ trên, chúng ta đã thêm một List và một NavigationLink bên trong NavigationView. Khi người dùng bấm vào Text "Tap me!", màn hình sẽ chuyển sang Text "Hello, World!".

 Bên cạnh đó, bạn cũng có thể tùy chỉnh giao diện của NavigationView bằng các modifier như navigationBarTitle, navigationBarItems, và navigationBarColor. Ví dụ:

 swift
 NavigationView {
     Text("Hello, World!")
         .navigationBarTitle("My Title")
         .navigationBarItems(trailing: Button(action: {}) {
             Image(systemName: "plus")
         })
         .navigationBarColor(.blue)
 }

 

 Ở ví dụ trên, chúng ta đã thêm một Text bên trong NavigationView và tùy chỉnh giao diện của navigation bar bằng cách thêm một navigationBarTitle, một navigationBarItems, và một navigationBarColor.

 Đó là một số cách để sử dụng NavigationView để tạo giao diện điều hướng trên màn hình Swift UI. Hy vọng những thông tin này sẽ hữu ích cho bạn trong việc phát triển ứng dụng của mình.

 Khi sử dụng NavigationView trong SwiftUI, có một số điểm cần lưu ý:

 - NavigationView chỉ hoạt động khi nó được đặt trong một NavigationController. Để sử dụng NavigationView trong ứng dụng của bạn, bạn phải bao bọc nó trong một NavigationController.
 - Các view được đặt trong NavigationView sẽ được tự động hiển thị với navigation bar và back button.
 - NavigationLink là một modifier rất hữu ích để tạo liên kết giữa các màn hình. Khi người dùng bấm vào một NavigationLink, màn hình sẽ chuyển đến nơi được chỉ định trong destination của NavigationLink.
 - Để tùy chỉnh giao diện của navigation bar, bạn có thể sử dụng các modifier như navigationBarTitle, navigationBarItems, và navigationBarColor.
 - Nếu bạn muốn tạo một navigation hierarchy phức tạp, bạn có thể sử dụng cấu trúc NavigationView lồng nhau.

 Để sử dụng NavigationView trong ứng dụng của bạn, bạn cần bao bọc nó trong một NavigationController. Dưới đây là ví dụ về cách sử dụng NavigationView trong ứng dụng của bạn:

 
 struct ContentView: View {
     var body: some View {
         NavigationView {
             List {
                 Text("Item 1")
                 Text("Item 2")
                 Text("Item 3")
             }
             .navigationBarTitle("My List")
         }
     }
 }

 

 Ở ví dụ trên, chúng ta đã tạo một List bên trong NavigationView. Chúng ta đã sử dụng navigationBarTitle để đặt tiêu đề cho navigation bar của chúng ta. Để có thể sử dụng NavigationView trong ứng dụng của bạn, bạn cần nhớ bao bọc nó trong một NavigationController.

 # 100 swift ui comp

 ## NavigationView Examples

 ### //TODO:  Basic NavigationView

 
 NavigationView {
     Text("Hello, NavigationView!")
         .navigationBarTitle("My Title")
 }

 

 ### 2. NavigationView with List

 
 NavigationView {
     List {
         Text("Item 1")
         Text("Item 2")
         Text("Item 3")
     }
     .navigationBarTitle("My List")
 }

 

 ### 3. NavigationView with Detail View

 
 struct ContentView: View {
     var body: some View {
         NavigationView {
             List {
                 NavigationLink(destination: DetailView()) {
                     Text("Go to Detail View")
                 }
             }
             .navigationBarTitle("My List")
         }
     }
 }

 struct DetailView: View {
     var body: some View {
         Text("Detail View")
             .navigationBarTitle("Detail")
     }
 }

 

 ### 4. NavigationView with Two Levels

 
 struct ContentView: View {
     var body: some View {
         NavigationView {
             List {
                 NavigationLink(destination: DetailView()) {
                     Text("Go to Detail View")
                 }
                 NavigationLink(destination: SubDetailView()) {
                     Text("Go to Sub Detail View")
                 }
             }
             .navigationBarTitle("My List")
         }
     }
 }

 struct DetailView: View {
     var body: some View {
         NavigationLink(destination: SubDetailView()) {
             Text("Go to Sub Detail View")
         }
         .navigationBarTitle("Detail")
     }
 }

 struct SubDetailView: View {
     var body: some View {
         Text("Sub Detail View")
             .navigationBarTitle("Sub Detail")
     }
 }

 

 ### 5. NavigationView with Custom Back Button

 swift
 struct ContentView: View {
     @Environment(\\.presentationMode) var presentationMode: Binding<PresentationMode>

     var body: some View {
         NavigationView {
             VStack {
                 Text("Hello, NavigationView!")
                 Button(action: {
                     self.presentationMode.wrappedValue.dismiss()
                 }) {
                     Image(systemName: "arrow.left")
                     Text("Back")
                 }
             }
             .navigationBarTitle("My Title")
         }
     }
 }

 

 ### 6. NavigationView with Custom NavigationBarItems

 
 struct ContentView: View {
     var body: some View {
         NavigationView {
             Text("Hello, NavigationView!")
                 .navigationBarTitle("My Title")
                 .navigationBarItems(
                     leading: Button(action: {}) {
                         Image(systemName: "gear")
                     },
                     trailing: Button(action: {}) {
                         Image(systemName: "plus")
                     }
                 )
         }
     }
 }

 

 ### 7. NavigationView with Custom NavigationBarColor

 
 struct ContentView: View {
     var body: some View {
         NavigationView {
             Text("Hello, NavigationView!")
                 .navigationBarTitle("My Title")
                 .navigationBarColor(.blue)
         }
     }
 }

 

 ### 8. NavigationView with Custom NavigationLink

 
 struct ContentView: View {
     var body: some View {
         NavigationView {
             List {
                 NavigationLink(destination: DetailView()) {
                     Text("Go to Detail View")
                 }
             }
             .navigationBarTitle("My List")
             .navigationLinkStyle(CustomNavigationLinkStyle())
         }
     }
 }

 struct DetailView: View {
     var body: some View {
         Text("Detail View")
             .navigationBarTitle("Detail")
     }
 }

 struct CustomNavigationLinkStyle: NavigationLinkStyle {
     func makeBody(configuration: Configuration) -> some View {
         Label {
             configuration.label
         } icon: {
             Image(systemName: "arrow.right")
         }
         .foregroundColor(.blue)
         .onTapGesture {
             configuration.trigger()
         }
     }
 }

 

 ### 9. NavigationView with Custom NavigationBarTitle

 
 struct ContentView: View {
     var body: some View {
         NavigationView {
             Text("Hello, NavigationView!")
                 .navigationBarTitle(Text("Custom Title"), displayMode: .inline)
         }
     }
 }

 

 ### 10. NavigationView with Custom Back Button Label

 
 struct ContentView: View {
     var body: some View {
         NavigationView {
             VStack {
                 Text("Hello, NavigationView!")
                 Button(action: {}) {
                     HStack {
                         Image(systemName: "arrow.left")
                         Text("Custom Back Button")
                     }
                 }
                 .frame(maxWidth: .infinity, alignment: .leading)
                 .padding()
                 .background(Color(UIColor.systemGray6))
                 .cornerRadius(10)
             }
             .navigationBarTitle("My Title")
             .navigationBarBackButtonHidden(true)
             .navigationBarItems(leading: BackButton())
         }
     }
 }

 struct BackButton: View {
     @Environment(\\.presentationMode) var presentationMode: Binding<PresentationMode>

     var body: some View {
         Button(action: {
             self.presentationMode.wrappedValue.dismiss()
         }) {
             HStack {
                 Image(systemName: "arrow.left")
                 Text("Back")
             }
         }
     }
 }

 

 ### 1//TODO:  NavigationView with Custom NavigationBarTitleView

 
 struct ContentView: View {
     var body: some View {
         NavigationView {
             Text("Hello, NavigationView!")
                 .navigationBarTitleView(CustomTitleView())
         }
     }
 }

 struct CustomTitleView: View {
     var body: some View {
         HStack {
             Image(systemName: "person.circle")
                 .font(.system(size: 30))
             Text("Custom Title")
                 .font(.headline)
         }
     }
 }

 

 ### 12. NavigationView with Custom NavigationBarLargeTitle

 
 struct ContentView: View {
     var body: some View {
         NavigationView {
             Text("Hello, NavigationView!")
                 .navigationBarTitle("
 Custom Title")
                 .navigationBarLargeTitleDisplayMode(.always)
         }
     }
 }

 

 ### 13. NavigationView with Toolbar

 
 struct ContentView: View {
     @State private var isEditing = false

     var body: some View {
         NavigationView {
             List {
                 Text("Item 1")
                 Text("Item 2")
                 Text("Item 3")
             }
             .navigationBarTitle("My List")
             .toolbar {
                 ToolbarItem(placement: .navigationBarLeading) {
                     Button(action: {}) {
                         Image(systemName: "gear")
                     }
                 }
                 ToolbarItem(placement: .navigationBarTrailing) {
                     Button(action: {
                         self.isEditing.toggle()
                     }) {
                         Image(systemName: isEditing ? "xmark.circle" : "pencil.circle")
                     }
                 }
             }
         }
     }
 }

 

 ### 14. NavigationView with TabView

 
 struct ContentView: View {
     var body: some View {
         NavigationView {
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
                 Text("Third Tab")
                     .tabItem {
                         Image(systemName: "3.circle")
                         Text("Third")
                     }
             }
             .navigationBarTitle("My Tabs")
         }
     }
 }

 

 ### 15. NavigationView with Custom List Row

 
 struct ContentView: View {
     var body: some View {
         NavigationView {
             List {
                 Text("Item 1")
                     .listRowBackground(Color.red)
                     .listRowInsets(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                 Text("Item 2")
                     .listRowBackground(Color.green)
                     .listRowInsets(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                 Text("Item 3")
                     .listRowBackground(Color.blue)
                     .listRowInsets(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
             }
             .navigationBarTitle("My List")
         }
     }
 }

 

 ### 16. NavigationView with Custom NavigationBarItems for iPad

 
 struct ContentView: View {
     var body: some View {
         NavigationView {
             Text("Hello, NavigationView!")
                 .navigationBarTitle("My Title")
                 .navigationBarItems(leading: iPadLeading(), trailing: iPadTrailing())
         }
         .navigationViewStyle(StackNavigationViewStyle())
     }
 }

 struct iPadLeading: View {
     var body: some View {
         HStack {
             Button(action: {}) {
                 Image(systemName: "gear")
             }
             Spacer()
         }
     }
 }

 struct iPadTrailing: View {
     var body: some View {
         HStack {
             Spacer()
             Button(action: {}) {
                 Image(systemName: "plus")
             }
         }
     }
 }

 

 ### 17. NavigationView with Custom NavigationBarTitle for iPad

 
 struct ContentView: View {
     var body: some View {
         NavigationView {
             Text("Hello, NavigationView!")
                 .navigationBarTitleDisplayMode(.inline)
                 .navigationBarTitle("Custom Title")
                 .navigationTitle("My Title")
         }
         .navigationViewStyle(StackNavigationViewStyle())
     }
 }

 

 ### 18. NavigationView with Custom NavigationBarLargeTitle for iPad

 
 struct ContentView: View {
     var body: some View {
         NavigationView {
             Text("Hello, NavigationView!")
                 .navigationBarTitle("My Title")
                 .navigationBarLargeTitleDisplayMode(.automatic)
                 .navigationTitle("Custom Title")
         }
         .navigationViewStyle(StackNavigationViewStyle())
     }
 }

 

 ### 19. NavigationView with Custom NavigationBarColor for iPad

 
 struct ContentView: View {
     var body: some View {
         NavigationView {
             Text("Hello, NavigationView!")
                 .navigationBarTitle("My Title")
                 .navigationBarColor(.blue)
                 .navigationTitle("Custom Title")
         }
         .navigationViewStyle(StackNavigationViewStyle())
     }
 }

 

 ### 20. NavigationView with Custom NavigationLinkStyle for iPad
 */
