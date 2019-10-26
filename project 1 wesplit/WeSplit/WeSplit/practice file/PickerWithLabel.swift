//
//  PickerForm.swift
//  WeSplit
//
//  Created by 游宗諭 on 2019/10/26.
//  Copyright © 2019 ytyubox. All rights reserved.
//

import SwiftUI

struct PickerWithLabel: View {
    private let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    var body: some View {
        Group {
            Text(selectedStudent)
            Picker("Select your student", selection: $selectedStudent) {
                //TODO: different from Paul, Xcode 11 allow this way to change selectedStudent, any idea?
                ForEach(students, id: \.self) {
                    Text($0)
                }
            }
            
        }
    }
}

struct PickerForm_Previews: PreviewProvider {
    static var previews: some View {
        PickerWithLabel()
    }
}
