//
//  FormView.swift
//  RentCar
//
//  Created by tandyys on 18/07/24.
//

import SwiftUI

struct FormView: View {
    let dummyArray = [1, 2, 3, 4, 5]
    @State var dummySelected = 0
    @State var dummyBool = true
    
    init() {
        UITableView.appearance().sectionHeaderHeight = 0
        UITableView.appearance().sectionFooterHeight = 10
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        VStack {
            Form {
                Section {
                    Picker(selection: $dummySelected, label: Text("Rental period")) {
                        ForEach(0..<dummyArray.count, id: \.self) { value in
                            Text("\(self.dummyArray[value])")
                                .tag(value)
                        }
                    }
                    .listRowBackground(Color.gray.opacity(0.2))
                }
                Section {
                    Picker(selection: $dummySelected, label: Text("Number of Cars")) {
                        ForEach(0..<dummyArray.count, id: \.self) { value in
                            Text("\(self.dummyArray[value])")
                                .tag(value)
                        }
                    }
                    .listRowBackground(Color.gray.opacity(0.2))
                }
                Section {
                    Picker(selection: $dummySelected, label: Text("Pick-up time")) {
                        ForEach(0..<dummyArray.count, id: \.self) { value in
                            Text("In \(self.dummyArray[value]) mins")
                                .tag(value)
                        }
                    }
                    .listRowBackground(Color.gray.opacity(0.2))
                }
                Section {
                    Picker(selection: $dummySelected, label: Text("Pick-up location")) {
                        ForEach(0..<dummyArray.count, id: \.self) { value in
                            Text("\(self.dummyArray[value])")
                                .tag(value)
                        }
                    }
                    .listRowBackground(Color.gray.opacity(0.2))
                    Picker(selection: $dummySelected, label: Text("Return location")) {
                        ForEach(0..<dummyArray.count, id: \.self) { value in
                            Text("\(self.dummyArray[value])")
                                .tag(value)
                        }
                    }
                    .listRowBackground(Color.gray.opacity(0.2))
                }
                Section {
                    Toggle(isOn: $dummyBool) {
                        Text("Driver")
                            .toggleStyle(SwitchToggleStyle(tint: .green))
                    }
                    .listRowBackground(Color.gray.opacity(0.2))
                }
                Section {
                    HStack(alignment: .center) {
                        Spacer()
                        Text("$160")
                            .font(.system(size: 32))
                            .bold()
                        Spacer()
                    }
                }
                Section {
                    ButtonView()
                }
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity)
    }
}

#Preview {
    FormView()
}
