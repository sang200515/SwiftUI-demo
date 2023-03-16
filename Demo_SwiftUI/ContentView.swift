//
//  ContentView.swift
//  Demo_SwiftUI
//
//  Created by Sang Truong on 14/03/2023.
//

import SwiftUI
import SwiftUI

class UserDefaultManager {

    // Định nghĩa key để lưu trữ dữ liệu vào UserDefaults
    static let key = "myData"

    // Hàm lưu trữ dữ liệu vào UserDefaults
    static func saveStringData(data: [String]) {
        UserDefaults.standard.set(data, forKey: key)
    }

    // Hàm truy xuất dữ liệu từ UserDefaults
    static func getListStringData() -> [String]? {
        return UserDefaults.standard.array(forKey: key) as? [String]
    }

    // Hàm lưu trữ dữ liệu vào UserDefaults
    static func saveBoolData(data: [Int]) {
        UserDefaults.standard.set(data, forKey: key)
    }

    // Hàm truy xuất dữ liệu từ UserDefaults
    static func getListBoolData() -> [Int]? {
        return UserDefaults.standard.array(forKey: key) as? [Int]
    }

}

struct ContentView: View {

    // Khai báo biến để lưu trữ dữ liệu TableView
    @State private var stringData: [String] = UserDefaultManager.getListStringData() ?? ["String 1", "String 2", "String 3"]
    @State private var boolData: [Int] = UserDefaultManager.getListBoolData() ?? [0,0,0]
    var body: some View {
        NavigationView {
            List {
                // Tạo Section
                Section(header: Text("String")) {
                    // Tạo các Cell
                    ForEach(stringData, id: \.self) { item in
                        NavigationLink(destination: EditDataView(data: item, onSave: { newData in
                            // Cập nhật dữ liệu mới
                            if let index = stringData.firstIndex(of: item) {
                                stringData[index] = newData
                                UserDefaultManager.saveStringData(data: stringData)
                            }
                        })) {
                            Text(item)
                        }
                    }
                }

                Section(header: Text("Bool")) {
                    // Tạo các Cell
                    ForEach(boolData, id: \.self) { item in
                        NavigationLink(destination: EditDataView(data: "\(item)", onSave: { newData in
                            // Cập nhật dữ liệu mới
                            if let index = boolData.firstIndex(of: item) {
                                boolData[index] = Int(newData) ?? 0
                                UserDefaultManager.saveBoolData(data: boolData)
                            }
                        })) {
                            Text("\(item)")
                        }
                    }
                }
            }
            .navigationBarTitle(Text("TableView"))
        }
    }
}

struct EditDataView: View {

    // Khai báo biến để lưu trữ dữ liệu cũ
    @State private var oldData: String

    // Khai báo biến để lưu trữ dữ liệu mới
    @State private var newData: String

    // Khai báo biến để lưu trữ hàm onSave
    let onSave: (String) -> Void

    init(data: String, onSave: @escaping (String) -> Void) {
        self._oldData = State(initialValue: data)
        self._newData = State(initialValue: data)
        self.onSave = onSave
    }

    var body: some View {
        VStack {
            // Hiển thị TextField để chỉnh sửa dữ liệu
            TextField("Enter new data", text: $newData)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            // Hiển thị nút Save để lưu lại thay đổi
            Button(action: {
                onSave(newData)
            }) {
                Text("Save")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()

            Spacer()
        }
        .navigationBarTitle(Text("Edit Data"))
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
