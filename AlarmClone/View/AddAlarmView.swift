//
//  AddAlarmView.swift
//  AlarmClone
//
//  Created by Elexoft on 07/04/2025.
//

import SwiftUI

struct AddAlarmView: View {
    // MARK: - PROPERTIES
    
    @State private var selectedTime = Date()
    @State private var pickerSelected: String = "Never"
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            VStack() {
                // Date Picker
                DatePicker("Select Time", selection: $selectedTime, displayedComponents: .hourAndMinute)
                    .datePickerStyle(.wheel)
                    .labelsHidden()
                    .frame(maxWidth: .infinity)
                    .padding()
                
                GroupBox {
                    Picker(selection: $pickerSelected, label: Text("Repeat")) {
                        Text("Option 1").tag(0)
                        Text("Option 2").tag(1)
                        Text("Option 3").tag(2)
                    } //: PICKER
                    .pickerStyle(MenuPickerStyle())
                    .padding()
                } //: GROUP BOX
            } //: VSTACK
            .navigationTitle("Edit Alarm")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        // ACTION
                    } label: {
                        Text("Cancel")
                            .font(.system(size: 17, weight: .regular, design: .rounded))
                            .foregroundStyle(Color.orange)
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        // ACTION
                    } label: {
                        Text("Save")
                            .font(.system(size: 17, weight: .regular, design: .rounded))
                            .foregroundStyle(Color.orange)
                    }
                }
            }
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

#Preview {
    AddAlarmView()
        .preferredColorScheme(.dark)
}
