//
//  Binding.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation
/*
 # Cách hoạt động của @Binding trong SwiftUI

 Trong SwiftUI, @Binding là một thuộc tính giúp kết nối dữ liệu giữa các view khác nhau. Khi một @Binding được tạo ra, nó sẽ tạo ra một liên kết hai chiều giữa hai view, khiến cho thay đổi dữ liệu trên một view sẽ ảnh hưởng đến dữ liệu trên view khác.

 Cụ thể, khi một view cha tạo ra một @Binding và truyền nó vào một view con, view con sẽ sử dụng @Binding đó để đọc và cập nhật giá trị của một biến nằm trong view cha. Khi giá trị của biến đó được thay đổi, @Binding sẽ tự động cập nhật giá trị trên view con.

 Ví dụ:

 
 struct ParentView: View {
     @State var name = "John"

     var body: some View {
         ChildView(name: $name)
     }
 }

 struct ChildView: View {
     @Binding var name: String

     var body: some View {
         TextField("Enter your name", text: $name)
     }
 }

 

 Ở đây, ParentView có một biến @State là 'name', được truyền vào ChildView thông qua một @Binding. Trong ChildView, TextField sử dụng biến 'name' thông qua @Binding để hiển thị nội dung của TextField và cập nhật giá trị của biến 'name' khi người dùng nhập liệu.

 Tóm lại, @Binding là một cách để kết nối dữ liệu giữa các view khác nhau trong SwiftUI, giúp cho việc thay đổi dữ liệu trên một view có thể ảnh hưởng đến các view khác.

 Đây là một số ví dụ về cách hoạt động của @Binding trong SwiftUI:

 //TODO:  Biến boolean:

 
 struct ParentView: View {
     @State var isOn = false

     var body: some View {
         ChildView(isOn: $isOn)
     }
 }

 struct ChildView: View {
     @Binding var isOn: Bool

     var body: some View {
         Toggle("Toggle", isOn: $isOn)
     }
 }

 

 //TODO:  Biến số:

 
 struct ParentView: View {
     @State var count = 0

     var body: some View {
         ChildView(count: $count)
     }
 }

 struct ChildView: View {
     @Binding var count: Int

     var body: some View {
         Button("Count: \\(count)") {
             count += 1
         }
     }
 }

 

 //TODO:  Biến chuỗi:

 
 struct ParentView: View {
     @State var name = "John"

     var body: some View {
         ChildView(name: $name)
     }
 }

 struct ChildView: View {
     @Binding var name: String

     var body: some View {
         TextField("Enter your name", text: $name)
     }
 }

 

 //TODO:  Biến mảng:

 
 struct ParentView: View {
     @State var numbers = [1, 2, 3]

     var body: some View {
         ChildView(numbers: $numbers)
     }
 }

 struct ChildView: View {
     @Binding var numbers: [Int]

     var body: some View {
         List(numbers, id: \\.self) { number in
             Text("\\(number)")
         }
     }
 }

 

 //TODO:  Biến dictionary:

 
 struct ParentView: View {
     @State var users = ["John": 30, "Jane": 25]

     var body: some View {
         ChildView(users: $users)
     }
 }

 struct ChildView: View {
     @Binding var users: [String: Int]

     var body: some View {
         List(users.sorted(by: <), id: \\.key) { user in
             Text("\\(user.key): \\(user.value)")
         }
     }
 }

 

 //TODO:  Biến optional:

 
 struct ParentView: View {
     @State var name: String?

     var body: some View {
         ChildView(name: $name)
     }
 }

 struct ChildView: View {
     @Binding var name: String?

     var body: some View {
         TextField("Enter your name", text: $name ?? "")
     }
 }

 

 //TODO:  Biến enum:

 
 enum Gender {
     case male
     case female
 }

 struct ParentView: View {
     @State var gender = Gender.male

     var body: some View {
         ChildView(gender: $gender)
     }
 }

 struct ChildView: View {
     @Binding var gender: Gender

     var body: some View {
         Picker("Gender", selection: $gender) {
             Text("Male").tag(Gender.male)
             Text("Female").tag(Gender.female)
         }
     }
 }

 

 //TODO:  Biến struct:

 
 struct Person {
     var name: String
     var age: Int
 }

 struct ParentView: View {
     @State var person = Person(name: "John", age: 30)

     var body: some View {
         ChildView(person: $person)
     }
 }

 struct ChildView: View {
     @Binding var person: Person

     var body: some View {
         VStack {
             TextField("Name", text: $person.name)
             Stepper(value: $person.age) {
                 Text("Age: \\(person.age)")
             }
         }
     }
 }

 

 //TODO:  Biến class:

 
 class User: ObservableObject {
     @Published var name: String
     @Published var age: Int

     init(name: String, age: Int) {
         self.name = name
         self.age = age
     }
 }

 struct ParentView: View {
     @StateObject var user = User(name: "John", age: 30)

     var body: some View {
         ChildView(user: $user)
     }
 }

 struct ChildView: View {
     @Binding var user: User

     var body: some View {
         VStack {
             TextField("Name", text: $user.name)
             Stepper(value: $user.age) {
                 Text("Age: \\(user.age)")
             }
         }
     }
 }

 

 //TODO:  Biến computed:

 
 struct ParentView: View {
     @State var count = 0

     var body: some View {
         ChildView(count: $count)
     }
 }

 struct ChildView: View {
     @Binding var count: Int

     var body: some View {
         VStack {
             Text("Count: \\(count)")
             Button("Increment") {
                 count += 1
             }
         }
     }
 }

 

 //TODO:  Biến environmentObject:

 
 class User: ObservableObject {
     @Published var name: String

     init(name: String) {
         self.name = name
     }
 }

 struct ParentView: View {
     @StateObject var user = User(name: "John")

     var body: some View {
         ChildView().environmentObject(user)
     }
 }

 struct ChildView: View {
     @EnvironmentObject var user: User

     var body: some View {
         Text("Name: \\(user.name)")
     }
 }

 

 //TODO:  Biến stateObject:

 
 class User: ObservableObject {
     @Published var name: String

     init(name: String) {
         self.name = name
     }
 }

 struct ParentView: View {
     var body: some View {
         ChildView().environmentObject(User(name: "John"))
     }
 }

 struct ChildView: View {
     @StateObject var user = User(name: "")

     var body: some View {
         VStack {
             Text("Name: \\(user.name)")
             Button("Set Name") {
                 user.name = "John"
             }
         }
     }
 }

 

 //TODO:  Biến environment:

 
 struct ParentView: View {
     @Environment(\\.colorScheme) var colorScheme

     var body: some View {
         ChildView()
     }
 }

 struct ChildView: View {
     @Environment(\\.colorScheme) var colorScheme

     var body: some View {
         Text("Color Scheme: \\(colorScheme.description)")
     }
 }

 

 //TODO:  Biến gesture:

 
 struct ParentView: View {
     @State var offset = CGSize.zero

     var body: some View {
         ChildView()
             .offset(offset)
             .gesture(
                 DragGesture()
                     .onChanged { value in
                         offset = value.translation
                     }
                     .onEnded { _ in
                         offset = .zero
                     }
             )
     }
 }

 struct ChildView: View {
     var body: some View {
         Circle()
             .frame(width: 50, height: 50)
     }
 }

 

 //TODO:  Biến view:

 
 struct ParentView: View {
     @State var isShowingChildView = false

     var body: some View {
         VStack {
             Button("Show Child View") {
                 isShowingChildView = true
             }
             if isShowingChildView {
                 ChildView(isPresented: $isShowingChildView)
             }
         }
     }
 }

 struct ChildView: View {
     @Binding var isPresented: Bool

     var body: some View {
         VStack {
             Text("Child View")
             Button("Dismiss") {
                 isPresented = false
             }
         }
     }
 }

 

 //TODO:  Biến function:

 
 struct ParentView: View {
     @State var count = 0

     var body: some View {
         ChildView(count: $count, incrementCount: incrementCount)
     }

     func incrementCount() {
         count += 1
     }
 }

 struct ChildView: View {
     @Binding var count: Int
     var incrementCount: () -> Void

     var body: some View {
         VStack {
             Text("Count: \\(count)")
             Button("Increment") {
                 incrementCount()
             }
         }
     }
 }

 

 //TODO:  Biến closure:

 
 struct ParentView: View {
     @State var count = 0

     var body: some View {
         ChildView(count: $count) {
             count += 1
         }
     }
 }

 struct ChildView: View {
     @Binding var count: Int
     var incrementCount: () -> Void

     var body: some View {
         VStack {
             Text("Count: \\(count)")
             Button("Increment") {
                 incrementCount()
             }
         }
     }
 }

 

 //TODO:  Biến binding:

 
 struct ParentView: View {
     @State var count = 0

     var body: some View {
         ChildView(count: Binding(get: {
             count
         }, set: { newValue in
             count = newValue
         }))
     }
 }

 struct ChildView: View {
     var count: Binding<Int>

     var body: some View {
         VStack {
             Text("Count: \\(count.wrappedValue)")
             Button("Increment") {
                 count.wrappedValue += 1
             }
         }
     }
 }

 

 //TODO:  Biến namespace:

 
 enum AppAction {
     case increment
 }

 struct AppState {
     var count = 0
 }

 struct ParentView: View {
     @EnvironmentObject var store: Store<AppState, AppAction>

     var body: some View {
         ChildView()
             .onAppear {
                 store.send(.increment)
             }
     }
 }

 struct ChildView: View {
     @EnvironmentObject var store: Store<AppState, AppAction>

     var body: some View {
         Text("Count: \\(store.state.count)")
     }
 }

 

 //TODO:  Biến reducer:
 */
