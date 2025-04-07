//
//  AlarmItemView.swift
//  AlarmClone
//
//  Created by Elexoft on 07/04/2025.
//

import SwiftUI

struct AlarmItemView: View {
    // MARK: - PROPERTIES
    
    @State var toggleOn: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                HStack(alignment: .lastTextBaseline, spacing: 3) {
                    Text("3:35")
                        .font(.system(size: 60, weight: .light, design: .rounded))
                        .foregroundColor(Color.white)
                    
                    Text("AM")
                        .font(.system(size: 30, weight: .light, design: .rounded))
                        .foregroundColor(Color.white)
                } //: HSTACK
                
                Text("Every day")
                    .font(.system(size: 15, weight: .regular, design: .rounded))
                    .foregroundColor(Color.white)
            } //: VSTACK
            
            Spacer()
            
            Toggle("", isOn: $toggleOn)
        } //: HSTACK
    }
}

// MARK: - PREVIEW

#Preview {
    AlarmItemView()
        .preferredColorScheme(.dark)
}
