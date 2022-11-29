//
//  DateEntretienUIView.swift
//  carNote
//
//  Created by youssef-mariem on 21/11/2022.
//

import SwiftUI

struct DateEntretienUIView: View {
    @State private var date = Date()

    var body: some View {
        
        Form{
            DatePicker("Date entretien", selection: $date)
                .datePickerStyle(GraphicalDatePickerStyle())
        }
    }
}

struct DateEntretienUIView_Previews: PreviewProvider {
    static var previews: some View {
        DateEntretienUIView()
    }
}
