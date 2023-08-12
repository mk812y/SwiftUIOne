//
//  DetailEditView.swift
//  SwiftUIOne
//
//  Created by Михаил Куприянов on 11.8.23..
//

import SwiftUI

struct DetailEditView: View {
    @Binding var scrum: DailyScrum
    @State private var newAtteneeName = ""
    
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $scrum.title)
                HStack {
                    Slider(value: $scrum.lengthMinutesDouble, in: 5...30, step: 1) {
                        Text("length")
                    }
                    .accessibilityValue("\(scrum.lengthMinutes) minutes")
                    Spacer()
                    Text("\(scrum.lengthMinutes) minutes")
                        .accessibilityHidden(true)
                }
                ThemePickerView(selection: $scrum.theme)
            }
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete { indices in
                    scrum.attendees.remove(atOffsets: indices)
                }
                HStack {
                    TextField("New Attendee", text: $newAtteneeName)
                    Button(action: {
                        withAnimation {
                            let attendee = DailyScrum.Attendee(name: newAtteneeName)
                            scrum.attendees.append(attendee)
                            newAtteneeName = ""
                            
                        }
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .accessibilityLabel("Add attendee")
                    }
                    .disabled(newAtteneeName.isEmpty)
                }
            }
        }
    }
}

#Preview {
    DetailEditView(scrum: .constant(DailyScrum.sampleData[0]))
}


//Section 3
//Pass the edit view a binding to data
