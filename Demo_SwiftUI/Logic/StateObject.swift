//
//  StateObject.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 16/03/2023.
//

import Foundation
/*
 # Sử dụng StateObject trong SwiftUI

 # Sử dụng StateObject trong SwiftUI

 StateObject là một tính năng mới được giới thiệu trong SwiftUI 2.0, cho phép chúng ta quản lý trạng thái của đối tượng trong toàn bộ ứng dụng. Trong bài viết này, chúng ta sẽ đi qua 10 ví dụ về cách mà StateObject hoạt động trong SwiftUI.

 ## Ví dụ 1: Sử dụng StateObject để quản lý trạng thái của Text Field

 
 struct ContentView: View {
     @StateObject var viewModel = ViewModel()
     var body: some View {
         VStack {
             TextField("Enter your name", text: $viewModel.name)
             Text("Hello, \\(viewModel.name)!")
         }
     }
 }

 class ViewModel: ObservableObject {
     @Published var name = ""
 }

 

 ## Ví dụ 2: Sử dụng StateObject để quản lý trạng thái của NavigationLink

 
 struct ContentView: View {
     @StateObject var viewModel = ViewModel()
     var body: some View {
         NavigationView {
             VStack {
                 NavigationLink(destination: DetailView(viewModel: viewModel)) {
                     Text("Go to Detail View")
                 }
             }
         }
     }
 }

 struct DetailView: View {
     @ObservedObject var viewModel: ViewModel
     var body: some View {
         Text("Hello, \\(viewModel.name)!")
     }
 }

 class ViewModel: ObservableObject {
     @Published var name = ""
 }

 

 ## Ví dụ 3: Sử dụng StateObject để quản lý trạng thái của Tab View

 
 struct ContentView: View {
     @StateObject var viewModel = ViewModel()
     var body: some View {
         TabView {
             Text("Tab 1")
                 .tabItem {
                     Image(systemName: "//TODO: circle")
                     Text("Tab 1")
                 }
             Text("Tab 2")
                 .tabItem {
                     Image(systemName: "2.circle")
                     Text("Tab 2")
                 }
         }
     }
 }

 class ViewModel: ObservableObject {
     @Published var selectedIndex = 0
 }

 

 ## Ví dụ 4: Sử dụng StateObject để quản lý trạng thái của Picker View

 
 struct ContentView: View {
     @StateObject var viewModel = ViewModel()
     var body: some View {
         VStack {
             Picker(selection: $viewModel.selectedIndex, label: Text("Picker"), content: {
                 Text("Option 1").tag(0)
                 Text("Option 2").tag(1)
             })
             Text("You selected option \\(viewModel.selectedIndex + 1)")
         }
     }
 }

 class ViewModel: ObservableObject {
     @Published var selectedIndex = 0
 }

 

 ## Ví dụ 5: Sử dụng StateObject để quản lý trạng thái của List View

 
 struct ContentView: View {
     @StateObject var viewModel = ViewModel()
     var body: some View {
         List(viewModel.items) { item in
             Text(item.name)
         }
     }
 }

 class ViewModel: ObservableObject {
     @Published var items = [Item(name: "Item 1"), Item(name: "Item 2"), Item(name: "Item 3")]
 }

 struct Item: Identifiable {
     let id = UUID()
     let name: String
 }

 

 ## Ví dụ 6: Sử dụng StateObject để quản lý trạng thái của Alert View

 
 struct ContentView: View {
     @StateObject var viewModel = ViewModel()
     var body: some View {
         Button("Show Alert") {
             viewModel.showAlert = true
         }
         .alert(isPresented: $viewModel.showAlert) {
             Alert(title: Text("Alert"), message: Text("This is an alert"), dismissButton: .default(Text("OK")))
         }
     }
 }

 class ViewModel: ObservableObject {
     @Published var showAlert = false
 }

 

 ## Ví dụ 7: Sử dụng StateObject để quản lý trạng thái của Action Sheet View

 
 struct ContentView: View {
     @StateObject var viewModel = ViewModel()
     var body: some View {
         Button("Show Action Sheet") {
             viewModel.showActionSheet = true
         }
         .actionSheet(isPresented: $viewModel.showActionSheet) {
             ActionSheet(title: Text("Action Sheet"), message: Text("This is an action sheet"), buttons: [
                 .default(Text("Option 1")),
                 .default(Text("Option 2")),
                 .cancel()
             ])
         }
     }
 }

 class ViewModel: ObservableObject {
     @Published var showActionSheet = false
 }

 

 ## Ví dụ 8: Sử dụng StateObject để quản lý trạng thái của Image View

 
 struct ContentView: View {
     @StateObject var viewModel = ViewModel()
     var body: some View {
         Image(uiImage: viewModel.image)
     }
 }

 class ViewModel: ObservableObject {
     @Published var image = UIImage(named: "image")!
 }

 

 ## Ví dụ 9: Sử dụng StateObject để quản lý trạng thái của Video Player

 
 struct ContentView: View {
     @StateObject var viewModel = ViewModel()
     var body: some View {
         VideoPlayer(player: viewModel.player)
     }
 }

 class ViewModel: ObservableObject {
     private var player: AVPlayer!

     init() {
         guard let url = Bundle.main.url(forResource: "video", withExtension: "mp4") else {
             fatalError("Unable to find video file")
         }
         self.player = AVPlayer(url: url)
     }
 }

 

 ## Ví dụ 10: Sử dụng StateObject để quản lý trạng thái của Map View

 
 struct ContentView: View {
     @StateObject var viewModel = ViewModel()
     var body: some View {
         Map(coordinateRegion: $viewModel.region, interactionModes: .all, showsUserLocation: true)
     }
 }

 class ViewModel: ObservableObject {
     @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
 }

 

 Đó là 10 ví dụ về cách mà StateObject hoạt động trong SwiftUI. Hy vọng bạn đã tìm thấy chúng hữu ích trong quá trình phát triển ứng dụng của mình!

 ## Ví dụ 11: Sử dụng StateObject để quản lý trạng thái của Toggle

 
 struct ContentView: View {
     @StateObject var viewModel = ViewModel()
     var body: some View {
         Toggle("Toggle", isOn: $viewModel.isOn)
     }
 }

 class ViewModel: ObservableObject {
     @Published var isOn = false
 }

 

 ## Ví dụ 12: Sử dụng StateObject để quản lý trạng thái của Stepper

 
 struct ContentView: View {
     @StateObject var viewModel = ViewModel()
     var body: some View {
         Stepper(value: $viewModel.value, in: 0...10) {
             Text("Value: \\\\(viewModel.value)")
         }
     }
 }

 class ViewModel: ObservableObject {
     @Published var value = 0
 }

 

 ## Ví dụ 13: Sử dụng StateObject để quản lý trạng thái của Slider

 
 struct ContentView: View {
     @StateObject var viewModel = ViewModel()
     var body: some View {
         Slider(value: $viewModel.value)
     }
 }

 class ViewModel: ObservableObject {
     @Published var value = 0.5
 }

 

 ## Ví dụ 14: Sử dụng StateObject để quản lý trạng thái của Progress View

 
 struct ContentView: View {
     @StateObject var viewModel = ViewModel()
     var body: some View {
         ProgressView(value: viewModel.progress)
     }
 }

 class ViewModel: ObservableObject {
     @Published var progress: Float = 0.5
 }

 

 ## Ví dụ 15: Sử dụng StateObject để quản lý trạng thái của Date Picker

 
 struct ContentView: View {
     @StateObject var viewModel = ViewModel()
     var body: some View {
         DatePicker("Date", selection: $viewModel.date, displayedComponents: [.date])
     }
 }

 class ViewModel: ObservableObject {
     @Published var date = Date()
 }

 

 ## Ví dụ 16: Sử dụng StateObject để quản lý trạng thái của Time Picker

 
 struct ContentView: View {
     @StateObject var viewModel = ViewModel()
     var body: some View {
         DatePicker("Time", selection: $viewModel.date, displayedComponents: [.hourAndMinute])
     }
 }

 class ViewModel: ObservableObject {
     @Published var date = Date()
 }

 

 ## Ví dụ 17: Sử dụng StateObject để quản lý trạng thái của Color Picker

 
 struct ContentView: View {
     @StateObject var viewModel = ViewModel()
     var body: some View {
         ColorPicker("Color", selection: $viewModel.color)
     }
 }

 class ViewModel: ObservableObject {
     @Published var color = Color.red
 }

 

 ## Ví dụ 18: Sử dụng StateObject để quản lý trạng thái của ScrollView

 
 struct ContentView: View {
     @StateObject var viewModel = ViewModel()
     var body: some View {
         ScrollView {
             VStack {
                 ForEach(viewModel.items, id: \\\\.self) { item in
                     Text(item)
                 }
             }
         }
     }
 }

 class ViewModel: ObservableObject {
     @Published var items = ["Item 1", "Item 2", "Item 3"]
 }

 

 ## Ví dụ 19: Sử dụng StateObject để quản lý trạng thái của Sheet View

 
 struct ContentView: View {
     @StateObject var viewModel = ViewModel()
     var body: some View {
         Button("Show Sheet") {
             viewModel.showSheet = true
         }
         .sheet(isPresented: $viewModel.showSheet) {
             Text("This is a sheet")
         }
     }
 }

 class ViewModel: ObservableObject {
     @Published var showSheet = false
 }

 

 ## Ví dụ 20: Sử dụng StateObject để quản lý trạng thái của Alert View

 
 struct ContentView: View {
     @StateObject var viewModel = ViewModel()
     var body: some View {
         Button("Show Alert") {
             viewModel.showAlert = true
         }
         .alert(isPresented: $viewModel.showAlert) {
             Alert(title: Text("Alert"), message: Text("This is an alert"), dismissButton: .default(Text("OK")))
         }
     }
 }

 class ViewModel: ObservableObject {
     @Published var showAlert = false
 }

 

 Đó là 20 ví dụ về cách mà StateObject hoạt động trong SwiftUI. Hy vọng bạn đã tìm thấy chúng hữu ích trong quá trình phát triển ứng dụng của mình!
 */
