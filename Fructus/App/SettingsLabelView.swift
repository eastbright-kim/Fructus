//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by κΉλν on 2021/07/01.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var label: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(label.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(label: "Fructus", labelImage:"info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
