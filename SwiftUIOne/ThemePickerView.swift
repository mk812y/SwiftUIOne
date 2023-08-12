//
//  ThemePickerView.swift
//  SwiftUIOne
//
//  Created by Михаил Куприянов on 12.8.23..
//

import SwiftUI

struct ThemePickerView: View {
    @Binding var selection: Theme
    
    var body: some View {
        Picker("Theme", selection: $selection) {
            ForEach(Theme.allCases) { theme in
                    ThemeView(theme: theme)
                    .tag(theme)
            }
        }
        .pickerStyle(.navigationLink)
    }
}

#Preview {
    ThemePickerView(selection: .constant(.buttercup))
}

